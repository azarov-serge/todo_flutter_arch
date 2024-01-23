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

import 'sign_up_page_state.dart';

part 'sign_up_page_event.dart';
part 'sign_up_page_bloc.freezed.dart';

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  final Store<AppState> store;
  final SignUpBloc signUpBloc;

  final UserGetInfoBloc userBloc = getIt();
  bool _isSignUp = false;

  late final StreamSubscription<AppState> _storeListener;

  factory SignUpPageBloc.create({required SignUpBloc signUpBloc}) =>
      SignUpPageBloc(
        store: getIt.get(),
        signUpBloc: signUpBloc,
      );

  SignUpPageBloc({required this.store, required this.signUpBloc})
      : super(const SignUpPageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_SignUpEvent>(_signUp);
    on<_ClearErrorEvent>(_clearError);

    _storeListener = store.onChange.listen((appState) {
      add(SignUpPageEvent.changeState(appState: appState));
    });
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    String error = '';

    if (signUpBloc.state.error.isNotEmpty) {
      error = error + signUpBloc.state.error;
    }

    if (userBloc.state.error.isNotEmpty) {
      error = '$error\n ${userBloc.state.error}';
    }

    // Если авторизован, но нет пользователя, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (signUpBloc.state.loaded &&
        signUpBloc.state.userId.isNotEmpty &&
        !userBloc.state.loading &&
        !userBloc.state.loaded &&
        !_isSignUp) {
      _isSignUp = true;
      userBloc.add(UserGetInfoEvent.fetchUser(signUpBloc.state.userId));

      return;
    }

    // Если произошел выход, очистить состояния
    if (userBloc.state.loaded && _isSignUp && userBloc.state.user != null) {
      final currentState = navigatorKey.currentState;
      if (currentState == null) {
        return;
      }

      // закрыть Sign Up
      currentState.pop();
      // закрыть Sign In
      currentState.pop();

      close();
      return;
    }

    emit(state.copyWith(
      loading: signUpBloc.state.loading || userBloc.state.loading,
      error: error,
    ));
  }

  void _signUp(_SignUpEvent event, emit) {
    signUpBloc.add(
      SignUpEvent.signUp(login: event.login, password: event.password),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) {
    signUpBloc.add(const SignUpEvent.clearError());
    userBloc.add(const UserGetInfoEvent.clearError());
  }
}
