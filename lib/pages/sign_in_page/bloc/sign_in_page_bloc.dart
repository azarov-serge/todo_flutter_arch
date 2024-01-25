import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';

import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/resource_bloc.dart';

import 'sign_in_page_state.dart';

part 'sign_in_page_event.dart';
part 'sign_in_page_bloc.freezed.dart';

class SignInPageBloc extends Bloc<SignInPageEvent, SignInPageState> {
  final Store<AppState> store;
  final ResourceBloc signInBloc;
  final ResourceBloc userBloc;

  bool _isSignIn = false;

  late final StreamSubscription<AppState> _storeListener;

  factory SignInPageBloc.create({
    required ResourceBloc signInBloc,
    required ResourceBloc userBloc,
  }) =>
      SignInPageBloc(
        store: getIt.get(),
        signInBloc: signInBloc,
        userBloc: userBloc,
      );

  SignInPageBloc(
      {required this.store, required this.signInBloc, required this.userBloc})
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
    signInBloc.add(const ResourceEvent.deleteResource());
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

    final String? userId = signInBloc.state.data;

    // Если авторизован, но нет пользователя, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (signInBloc.state.loaded &&
        userId != null &&
        !userBloc.state.loading &&
        !userBloc.state.loaded &&
        !_isSignIn) {
      _isSignIn = true;
      userBloc.add(ResourceEvent.fetch(userId));

      return;
    }

    final UserModel? user = userBloc.state.data;

    // Если произошел вход, вернуться на HomePage
    if (userBloc.state.loaded && _isSignIn && user != null) {
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
      ResourceEvent.fetch(
        {'login': event.login, 'password': event.password},
      ),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) {
    signInBloc.add(const ResourceEvent.clearError());
    userBloc.add(const ResourceEvent.clearError());
  }
}
