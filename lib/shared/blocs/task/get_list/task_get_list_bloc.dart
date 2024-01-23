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
import 'package:todo/shared/blocs/user/user.dart';

import 'task_get_list_state.dart';

part 'task_get_list_bloc.freezed.dart';
part 'task_get_list_event.dart';

class TaskGetListBloc extends Bloc<TaskGetListEvent, TaskGetListState> {
  final Store<AppState> store;
  late final StreamSubscription<AppState> _storeListener;
  final UserGetInfoBloc userGetInfoBloc = getIt();

  factory TaskGetListBloc.create() => TaskGetListBloc(
        store: getIt.get(),
      );

  TaskGetListBloc({required this.store}) : super(const TaskGetListState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_FetchListEvent>(_fetchList);

    on<_ClearErrorEvent>(_clearError);

    on<_DeleteResourceEvent>(_deleteResource);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(TaskGetListEvent.changeState(appState: appState));
    });

    final resource = getResource(store.state, request: taskGetListRequest) ??
        ResourceModel(name: taskGetListRequest.resourceName);

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        tasks: resource.data ?? state.tasks,
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
    final resource = getResource(event.appState, request: taskGetListRequest);

    if (resource == null) {
      return;
    }

    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        tasks: resource.data ?? state.tasks,
        error: resource.error,
      ),
    );
  }

  void _fetchList(_FetchListEvent event, emit) async {
    store.dispatch(
      fetchResourceThunk(store,
          request: taskGetListRequest.copyWith(
            data: event.userId,
          )),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) async {
    final request = taskGetListRequest.copyWith();
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
        resourceName: taskGetListRequest.resourceName,
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(name: taskGetListRequest.resourceName),
      ),
    );
  }
}
