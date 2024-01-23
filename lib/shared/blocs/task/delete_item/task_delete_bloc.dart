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
import 'package:todo/shared/blocs/task/task.dart';
import 'package:todo/shared/blocs/user/user.dart';

part 'task_delete_bloc.freezed.dart';
part 'task_delete_event.dart';

class TaskDeleteBloc extends Bloc<TaskDeleteEvent, TaskDeleteState> {
  final Store<AppState> store;
  late final StreamSubscription<AppState> _storeListener;
  final UserGetInfoBloc userGetInfoBloc = getIt();
  final TaskGetListBloc taskGetListBloc = getIt();
  String _id = '';

  factory TaskDeleteBloc.create() => TaskDeleteBloc(
        store: getIt.get(),
      );

  TaskDeleteBloc({required this.store}) : super(const TaskDeleteState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_DeleteEvent>(_delete);

    on<_ClearErrorEvent>(_clearError);

    on<_DeleteResourceEvent>(_deleteResource);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(TaskDeleteEvent.changeState(appState: appState));
    });
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final UserModel? user = userGetInfoBloc.state.user;

    if (user == null) {
      return;
    }

    final request = taskDeleteRequest.copyWith(id: _id);
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

    if (state.loaded && !state.loading && state.error.isEmpty) {
      store.dispatch(
        ResourcesAction.deleteResource(resourceName: request.resourceName),
      );

      taskGetListBloc.add(TaskGetListEvent.fetchList(user.id));
    }
  }

  void _delete(_DeleteEvent event, emit) {
    _id = event.id;
    final request = taskDeleteRequest.copyWith(id: _id);

    store.dispatch(
      fetchResourceThunk(
        store,
        request: request.copyWith(
          data: event.id,
        ),
      ),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) async {
    final request = taskDeleteRequest.copyWith(id: _id);
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
    final request = taskDeleteRequest.copyWith(id: _id);

    store.dispatch(
      ResourcesAction.deleteResource(
        resourceName: request.resourceName,
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    final request = taskDeleteRequest.copyWith(id: _id);

    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(name: request.resourceName),
      ),
    );
  }
}
