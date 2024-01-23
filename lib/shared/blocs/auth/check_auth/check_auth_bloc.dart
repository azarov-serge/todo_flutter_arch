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

import 'check_auth_state.dart';

part 'check_auth_bloc.freezed.dart';
part 'check_auth_event.dart';

class CheckAuthBloc extends Bloc<CheckAuthEvent, CheckAuthState> {
  final Store<AppState> store;

  late final StreamSubscription<AppState> _storeListener;

  factory CheckAuthBloc.create() => CheckAuthBloc(
        store: getIt.get(),
      );

  CheckAuthBloc({required this.store}) : super(const CheckAuthState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_CheckEvent>(_check);

    on<_DeleteResourceEvent>(_deleteResource);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(CheckAuthEvent.changeState(appState: appState));
    });

    final request = checkAuthRequest.copyWith();
    final resource = getResource(store.state, request: request) ??
        ResourceModel(name: request.resourceName);

    final String? data = resource.data;

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        userId: data ?? '',
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
    final request = checkAuthRequest.copyWith();
    final resource = getResource(store.state, request: request);

    if (resource == null) {
      return;
    }

    final String? data = resource.data;

    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        userId: data ?? '',
        error: resource.error,
      ),
    );
  }

  void _check(_CheckEvent event, emit) {
    store.dispatch(fetchResourceThunk(store, request: checkAuthRequest));
  }

  void _deleteResource(_DeleteResourceEvent event, emit) {
    store.dispatch(
      ResourcesAction.deleteResource(
        resourceName: checkAuthRequest.resourceName,
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(name: checkAuthRequest.resourceName),
      ),
    );
  }
}
