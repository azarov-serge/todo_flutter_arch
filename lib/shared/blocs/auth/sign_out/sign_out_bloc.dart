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
import 'package:todo/shared/blocs/user/user.dart';

import 'sign_out_state.dart';

part 'sign_out_bloc.freezed.dart';
part 'sign_out_event.dart';

class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  final Store<AppState> store;
  final UserGetInfoBloc userBloc = getIt();

  late final StreamSubscription<AppState> _storeListener;

  factory SignOutBloc.create() => SignOutBloc(
        store: getIt.get(),
      );

  SignOutBloc({required this.store}) : super(const SignOutState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_SignOutEvent>(_signOut);
    on<_ClearErrorEvent>(_clearError);

    on<_DeleteResourceEvent>(_deleteResource);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(SignOutEvent.changeState(appState: appState));
    });

    final request = signOutRequest.copyWith();
    final resource = getResource(store.state, request: request) ??
        ResourceModel(name: request.resourceName);

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
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
    final request = signOutRequest.copyWith();
    final resource = getResource(store.state, request: request);

    if (resource == null) {
      return;
    }

    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        error: resource.error,
      ),
    );
  }

  void _signOut(_SignOutEvent event, emit) async {
    final UserModel? user = userBloc.state.user;

    if (user == null) {
      return;
    }

    final request = signOutRequest.copyWith(
      data: user.id,
    );

    await store.dispatch(
      fetchResourceThunk(store, request: request),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) async {
    final request = signOutRequest.copyWith();
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
        resourceName: signOutRequest.resourceName,
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(name: signOutRequest.resourceName),
      ),
    );
  }
}
