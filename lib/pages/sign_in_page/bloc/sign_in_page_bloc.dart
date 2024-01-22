import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:todo/application/router/router.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/blocs/auth/auth_bloc.dart';
import 'package:todo/shared/blocs/user/user_block.dart';
import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';

import 'sign_in_page_state.dart';

part 'sign_in_page_event.dart';
part 'sign_in_page_bloc.freezed.dart';

class SignInPageBloc extends Bloc<SignInPageEvent, SignInPageState> {
  final Store<AppState> store;
  final AuthBloc authBloc = getIt();
  final UserBloc userBloc = getIt();
  bool _isSignIn = false;

  late final StreamSubscription<AppState> _storeListener;

  factory SignInPageBloc.create() => SignInPageBloc(
        store: getIt.get(),
      );

  SignInPageBloc({required this.store}) : super(const SignInPageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_SignInEvent>(_signIn);
    on<_ClearErrorEvent>(_clearError);

    authBloc.signInMode = true;
    _storeListener = store.onChange.listen((appState) {
      add(SignInPageEvent.changeState(appState: appState));
    });
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    authBloc.signInMode = false;

    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    String error = '';
    final signInResource = authBloc.state.signInResource;
    final userResource = userBloc.state.fetchUserResource;

    if (signInResource.error.isNotEmpty) {
      error = error + signInResource.error;
    } else if (userResource.error.isNotEmpty) {
      error = '$error\n ${userResource.error}';
    }

    final signInLoading = signInResource.loading;
    final signInLoaded = signInResource.loaded;

    final userLoaded = userResource.loaded;
    final userLoading = userResource.loading;

    final UserModel? user = userBloc.state.user;
    final userId = signInResource.data;

    // Если авторизован, но нет пользователя, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (signInLoaded == true &&
        userId != null &&
        !userLoading &&
        !userLoaded &&
        !_isSignIn) {
      _isSignIn = true;
      userBloc.add(UserEvent.fetchUser(userId));

      return;
    }

    // Если произошел выход, очистить состояния
    if (userLoaded == true && _isSignIn && user != null) {
      final currentState = navigatorKey.currentState;
      if (currentState == null) {
        return;
      }

      currentState.pop();
      close();
      return;
    }

    emit(state.copyWith(loading: signInLoading || userLoading, error: error));
  }

  void _signIn(_SignInEvent event, emit) {
    authBloc.add(
      AuthEvent.signIn(login: event.login, password: event.password),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) {
    authBloc.add(const AuthEvent.clearSignInError());
    userBloc.add(const UserEvent.clearFetchUserError());
  }
}
