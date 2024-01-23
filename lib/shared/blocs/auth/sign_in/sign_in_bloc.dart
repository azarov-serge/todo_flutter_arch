import 'dart:async';
// ignore: depend_on_referenced_packages, unused_import
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';

import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/models/models.dart';
import 'package:todo/shared/services/requests.dart';

import 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final Store<AppState> store;
  bool signInMode = false;
  late final StreamSubscription<AppState> _storeListener;

  factory SignInBloc.create() => SignInBloc(
        store: getIt.get(),
      );

  SignInBloc({required this.store}) : super(const SignInState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_SignInEvent>(_signIn);
    on<_ClearErrorEvent>(_clearError);

    on<_DeleteResourceEvent>(_deleteResource);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(SignInEvent.changeState(appState: appState));
    });

    final request = signInRequest.copyWith();
    final resource = getResource(store.state, request: request) ??
        ResourceModel(name: request.resourceName);

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        userId: resource.data ?? '',
        error: resource.error,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final request = signInRequest.copyWith();
    final resource = getResource(store.state, request: request);

    if (resource == null) {
      return;
    }

    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        userId: resource.data ?? '',
        error: resource.error,
      ),
    );
  }

  void _signIn(_SignInEvent event, emit) async {
    final request = signInRequest.copyWith(
      data: {'login': event.login, 'password': event.password},
    );

    await store.dispatch(
      fetchResourceThunk(store, request: request),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) async {
    final request = signInRequest.copyWith();
    final resource = getResource(store.state, request: request);

    if (resource == null) {
      return;
    }

    store.dispatch(
      ResourcesAction.updateResource(
        resource: resource.copyWith(error: '', loaded: false),
      ),
    );
  }

  void _deleteResource(_DeleteResourceEvent event, emit) {
    store.dispatch(
      ResourcesAction.deleteResource(
        resourceName: signInRequest.resourceName,
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(name: signInRequest.resourceName),
      ),
    );
  }
}
