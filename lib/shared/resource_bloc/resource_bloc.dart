import 'dart:async';

// ignore: depend_on_referenced_packages, unused_import
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';

import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/model/resource_bloc_params.dart';

import 'package:todo/shared/services/models/models.dart';

import 'resource_state.dart';

part 'resource_bloc.freezed.dart';
part 'resource_event.dart';

class ResourceBloc extends Bloc<ResourceEvent, ResourceState> {
  final Store<AppState> store;
  final ResourceParamsModel params;
  late final StreamSubscription<AppState> _storeListener;

  factory ResourceBloc.create({required ResourceParamsModel params}) =>
      ResourceBloc(
        store: getIt.get(),
        params: params,
      );

  ResourceBloc({required this.store, required this.params})
      : super(const ResourceState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_FetchDataEvent>(_fetch);
    on<_ClearErrorEvent>(_clearError);
    on<_DeleteResourceEvent>(_deleteResource);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(ResourceEvent.changeState(appState: appState));
    });

    final resource = getResource(store.state, request: params.request) ??
        ResourceModel(id: params.request.resourceId);

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        data: resource.data,
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
    final resource = getResource(store.state, request: params.request);

    if (resource == null) {
      return;
    }

    final changeState = params.changeState;
    if (changeState != null) {
      changeState(store);
    }

    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        data: resource.data,
        error: resource.error,
      ),
    );
  }

  void _fetch(_FetchDataEvent event, emit) async {
    params.updateRequest(store: store, event: event);

    store.dispatch(
      fetchResourceThunk(store, request: params.request),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) async {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(
          id: params.request.resourceId,
          error: '',
          loaded: false,
        ),
      ),
    );
  }

  void _deleteResource(_DeleteResourceEvent event, emit) {
    store.dispatch(
      ResourcesAction.deleteResource(
        resourceId: params.request.resourceId,
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(id: params.request.resourceId),
      ),
    );
  }
}
