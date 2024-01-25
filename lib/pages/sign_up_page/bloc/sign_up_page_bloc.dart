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

import 'sign_up_page_state.dart';

part 'sign_up_page_event.dart';
part 'sign_up_page_bloc.freezed.dart';

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  final Store<AppState> store;
  final ResourceBloc signUpBloc;
  final ResourceBloc userBloc;

  bool _isSignUp = false;

  late final StreamSubscription<AppState> _storeListener;

  factory SignUpPageBloc.create({
    required ResourceBloc signUpBloc,
    required ResourceBloc userBloc,
  }) =>
      SignUpPageBloc(
        store: getIt.get(),
        signUpBloc: signUpBloc,
        userBloc: userBloc,
      );

  SignUpPageBloc({
    required this.store,
    required this.signUpBloc,
    required this.userBloc,
  }) : super(const SignUpPageState()) {
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

    final String? userId = signUpBloc.state.data;
    // Если авторизован, но нет пользователя, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (signUpBloc.state.loaded &&
        userId != null &&
        !userBloc.state.loading &&
        !userBloc.state.loaded &&
        !_isSignUp) {
      _isSignUp = true;
      userBloc.add(ResourceEvent.fetch(userId));

      return;
    }

    final UserModel? user = userBloc.state.data;
    // Если произошел выход, очистить состояния
    if (userBloc.state.loaded && _isSignUp && user != null) {
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
      ResourceEvent.fetch({'login': event.login, 'password': event.password}),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) {
    signUpBloc.add(const ResourceEvent.clearError());
    userBloc.add(const ResourceEvent.clearError());
  }
}
