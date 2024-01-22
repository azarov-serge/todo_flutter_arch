import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/blocs/auth/auth_bloc.dart';
import 'package:todo/shared/blocs/task/task_bloc.dart';
import 'package:todo/shared/blocs/user/user_block.dart';
import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/services.dart';

import 'task_editor_page_state.dart';

part 'task_editor_page_event.dart';
part 'task_editor_page_bloc.freezed.dart';

class TaskEditorPageBloc
    extends Bloc<TaskEditorPageEvent, TaskEditorPageState> {
  final Store<AppState> store;
  final TaskBloc taskBloc = getIt();
  final UserBloc userBloc = getIt();

  late final StreamSubscription<AppState> _storeListener;

  factory TaskEditorPageBloc.create() => TaskEditorPageBloc(
        store: getIt.get(),
      );

  TaskEditorPageBloc({required this.store})
      : super(const TaskEditorPageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_InitEvent>(_init);
    on<_UpdateTaskEvent>(_updateTask);
    on<_SubmitEvent>(_submit);

    on<_ClearErrorEvent>(_clearError);

    _storeListener = store.onChange.listen((appState) {
      add(TaskEditorPageEvent.changeState(appState: appState));
    });
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();

    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    var task = state.task;
    final user = userBloc.state.user;

    event.appState.resourcesState.resources;

    if (user == null) {
      return;
    }

    if (task == null) {
      return;
    }

    final request = task.id.isNotEmpty
        ? taskUpdateRequest.copyWith(id: task.id)
        : taskCreateRequest.copyWith(id: state.id);

    final resource = getResource(event.appState, request: request);

    final loading = resource?.loading ?? false;
    final loaded = resource?.loaded ?? false;

    final error = resource?.error ?? '';
    task = resource?.data ?? task;

    if (!loading && loaded && error.isEmpty) {
      emit(state.copyWith(task: null));
      // Удаляем ресурс что бы не попасть в бесконечный цикл + не хранить ненужную инфу
      taskBloc.add(TaskEvent.removeResource(request.resourceName));

      // Можно обновлять кэш
      taskBloc.add(TaskEvent.fetchList(user.id));

      navigatorKey.currentState?.pop();

      return;
    }

    emit(
      state.copyWith(task: task ?? state.task, loading: loading, error: error),
    );
  }

  void _init(_InitEvent event, emit) {
    final id = event.id.isEmpty ? UniqueKey().toString() : event.id;
    final List<TaskModel> tasks = taskBloc.state.getListResource.data ?? [];
    TaskModel task = TaskModel.createEmpty();

    var request = taskCreateRequest.copyWith(id: id);
    var resource = getResource(store.state, request: request);

    if (tasks.isNotEmpty && event.id.isNotEmpty) {
      task = tasks.firstWhere((element) => element.id == id);

      request = taskUpdateRequest.copyWith(id: id);
      resource = getResource(store.state, request: request);
    }

    final loading = resource?.loading ?? false;

    final error = resource?.error ?? '';

    emit(state.copyWith(task: task, loading: loading, error: error, id: id));
  }

  void _updateTask(_UpdateTaskEvent event, emit) {
    emit(state.copyWith(task: event.task));
  }

  void _submit(_SubmitEvent event, emit) {
    final task = event.task;

    if (task.id.isEmpty) {
      taskBloc.add(TaskEvent.createItem(task, state.id));
    } else {
      taskBloc.add(TaskEvent.updateItem(task));
    }
  }

  void _clearError(_ClearErrorEvent event, emit) {
    final task = state.task;

    if (task == null) {
      return;
    }

    final request = task.id.isEmpty
        ? taskCreateRequest.copyWith(id: state.id)
        : taskUpdateRequest.copyWith(id: task.id);

    taskBloc.add(TaskEvent.clearResourceError(request));
  }
}
