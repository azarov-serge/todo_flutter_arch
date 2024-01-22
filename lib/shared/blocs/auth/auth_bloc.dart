import 'dart:async';
// ignore: depend_on_referenced_packages, unused_import
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/models/models.dart';
import 'package:todo/shared/services/requests.dart';

import 'auth_state.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Store<AppState> store;
  bool signInMode = false;
  late final StreamSubscription<AppState> _storeListener;

  factory AuthBloc.create() => AuthBloc(
        store: getIt.get(),
      );

  AuthBloc({required this.store}) : super(const AuthState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_CheckAuthEvent>(_checkAuth);
    on<_ClearUserIdEvent>(_clearUserId);

    on<_SignInEvent>(_signIn);
    on<_ClearSignInErrorEvent>(_clearSignInError);

    on<_SignUpEvent>(_signUp);
    on<_ClearSignUpErrorEvent>(_clearSignUpError);

    on<_SignOutEvent>(_signOut);
    on<_ClearSignOutErrorEvent>(_clearSignOutError);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(AuthEvent.changeState(appState: appState));
    });

    // ignore: invalid_use_of_visible_for_testing_member
    emit(state.copyWith(
      signInResource: ResourceModel(name: signInRequest.resourceName),
      signUpResource: ResourceModel(name: signUpRequest.resourceName),
      signOutResource: ResourceModel(name: signOutRequest.resourceName),
      checkAuthResource: ResourceModel(name: checkAuthRequest.resourceName),
    ));
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final signInResource =
        getResource(event.appState, request: signInRequest) ??
            state.signInResource;

    final signUpResource =
        getResource(event.appState, request: signUpRequest) ??
            state.signUpResource;

    final signOutResource =
        getResource(event.appState, request: signOutRequest) ??
            state.signOutResource;

    var checkAuthResource =
        getResource(event.appState, request: checkAuthRequest) ??
            state.checkAuthResource;

    emit(state.copyWith(signInResource: signInResource));
    emit(state.copyWith(signUpResource: signUpResource));
    emit(state.copyWith(signOutResource: signOutResource));
    emit(state.copyWith(checkAuthResource: checkAuthResource));
  }

  void _checkAuth(_CheckAuthEvent event, emit) {
    store.dispatch(fetchResourceThunk(store, request: checkAuthRequest));
  }

  void _clearUserId(_ClearUserIdEvent event, emit) async {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.checkAuthResource.copyWith(data: null),
      ),
    );
  }

  void _signIn(_SignInEvent event, emit) async {
    final request = signInRequest.copyWith(
      data: AuthModel(login: event.login, password: event.password),
    );

    await store.dispatch(
      fetchResourceThunk(store, request: request),
    );
  }

  void _clearSignInError(_ClearSignInErrorEvent event, emit) async {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.signInResource.copyWith(error: ''),
      ),
    );
  }

  void _signUp(_SignUpEvent event, emit) async {
    final request = signUpRequest.copyWith(
      data: AuthModel(login: event.login, password: event.password),
    );

    await store.dispatch(
      fetchResourceThunk(store, request: request),
    );
  }

  void _clearSignUpError(_ClearSignUpErrorEvent event, emit) async {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.signUpResource.copyWith(error: ''),
      ),
    );
  }

  void _signOut(_SignOutEvent event, emit) async {
    final userResource = getResource(store.state, request: fetchUserRequest);
    if (userResource == null) {
      return;
    }

    final UserModel? user = userResource.data;

    if (user is! UserModel) {
      return;
    }

    final request = signOutRequest.copyWith(
      data: user.id,
    );

    await store.dispatch(
      fetchResourceThunk(store, request: request),
    );
  }

  void _clearSignOutError(_ClearSignOutErrorEvent event, emit) async {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.signOutResource.copyWith(error: ''),
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.signInResource.createEmpty(),
      ),
    );

    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.signUpResource.createEmpty(),
      ),
    );

    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.signOutResource.createEmpty(),
      ),
    );
  }
}
