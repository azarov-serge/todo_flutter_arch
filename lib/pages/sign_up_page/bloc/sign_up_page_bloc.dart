import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/blocs/auth/auth_bloc.dart';
import 'package:todo/shared/blocs/user/user_block.dart';
import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';

import 'sign_up_page_state.dart';

part 'sign_up_page_event.dart';
part 'sign_up_page_bloc.freezed.dart';

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  final Store<AppState> store;
  final AuthBloc authBloc = getIt();
  final UserBloc userBloc = getIt();
  bool _isSignUp = false;

  late final StreamSubscription<AppState> _storeListener;

  factory SignUpPageBloc.create() => SignUpPageBloc(
        store: getIt.get(),
      );

  SignUpPageBloc({required this.store}) : super(const SignUpPageState()) {
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
    final signUpRequest = authBloc.state.signUpResource;
    final userResource = userBloc.state.fetchUserResource;

    if (signUpRequest.error.isNotEmpty) {
      error = error + signUpRequest.error;
    }

    if (userResource.error.isNotEmpty) {
      error = '$error\n ${userResource.error}';
    }

    final signUpLoading = signUpRequest.loading;
    final signUpLoaded = signUpRequest.loaded;

    final userLoaded = userResource.loaded;
    final userLoading = userResource.loading;

    final UserModel? user = userBloc.state.user;
    final userId = signUpRequest.data;

    // Если авторизован, но нет пользователя, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (signUpLoaded == true &&
        userId != null &&
        !userLoading &&
        !userLoaded &&
        !_isSignUp) {
      _isSignUp = true;
      userBloc.add(UserEvent.fetchUser(userId));

      return;
    }

    // Если произошел выход, очистить состояния
    if (userLoaded == true && _isSignUp && user != null) {
      final currentState = navigatorKey.currentState;
      if (currentState == null) {
        return;
      }

      currentState.pop();
      currentState.pop();

      close();
      return;
    }

    emit(state.copyWith(loading: signUpLoading || userLoading, error: error));
  }

  void _signUp(_SignUpEvent event, emit) {
    authBloc.add(
      AuthEvent.signUp(login: event.login, password: event.password),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) {
    authBloc.add(const AuthEvent.clearSignUpError());
    userBloc.add(const UserEvent.clearFetchUserError());
  }
}
