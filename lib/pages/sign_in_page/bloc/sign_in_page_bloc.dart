import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/shared/blocs/auth/auth.dart';
import 'package:todo/shared/blocs/user/user.dart';

import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';

import 'sign_in_page_state.dart';

part 'sign_in_page_event.dart';
part 'sign_in_page_bloc.freezed.dart';

class SignInPageBloc extends Bloc<SignInPageEvent, SignInPageState> {
  final Store<AppState> store;
  final SignInBloc signInBloc;

  final UserGetInfoBloc userBloc = getIt();

  bool _isSignIn = false;

  late final StreamSubscription<AppState> _storeListener;

  factory SignInPageBloc.create({required SignInBloc signInBloc}) =>
      SignInPageBloc(
        store: getIt.get(),
        signInBloc: signInBloc,
      );

  SignInPageBloc({required this.store, required this.signInBloc})
      : super(const SignInPageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_SignInEvent>(_signIn);
    on<_ClearErrorEvent>(_clearError);

    _storeListener = store.onChange.listen((appState) {
      add(SignInPageEvent.changeState(appState: appState));
    });
  }

  @override
  Future<void> close() async {
    signInBloc.add(const SignInEvent.deleteResource());
    await _storeListener.cancel();

    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    String error = '';

    if (signInBloc.state.error.isNotEmpty) {
      error = error + signInBloc.state.error;
    }

    if (userBloc.state.error.isNotEmpty) {
      error = '$error\n ${userBloc.state.error}';
    }

    // Если авторизован, но нет пользователя, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (signInBloc.state.loaded &&
        signInBloc.state.userId.isNotEmpty &&
        !userBloc.state.loading &&
        !userBloc.state.loaded &&
        !_isSignIn) {
      _isSignIn = true;
      userBloc.add(UserGetInfoEvent.fetchUser(signInBloc.state.userId));

      return;
    }

    // Если произошел вход, вернуться на HomePage
    if (userBloc.state.loaded && _isSignIn && userBloc.state.user != null) {
      final currentState = navigatorKey.currentState;
      if (currentState == null) {
        return;
      }

      currentState.pop();
      close();
      return;
    }

    emit(state.copyWith(
      loading: signInBloc.state.loading || userBloc.state.loading,
      error: error,
    ));
  }

  void _signIn(_SignInEvent event, emit) {
    signInBloc.add(
      SignInEvent.signIn(login: event.login, password: event.password),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) {
    signInBloc.add(const SignInEvent.clearError());
    userBloc.add(const UserGetInfoEvent.clearError());
  }
}
