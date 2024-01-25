import 'dart:async';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';
import 'package:todo/models/models.dart';

import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/resource_bloc.dart';
import 'package:todo/shared/services/services.dart';

import 'task_editor_page_state.dart';

part 'task_editor_page_event.dart';
part 'task_editor_page_bloc.freezed.dart';

class TaskEditorPageBloc
    extends Bloc<TaskEditorPageEvent, TaskEditorPageState> {
  final Store<AppState> store;

  final ResourceBloc userBloc;
  final ResourceBloc tasksBloc;
  final ResourceBloc taskCreateBloc;
  final ResourceBloc taskUpdateBloc;

  late final StreamSubscription<AppState> _storeListener;

  bool _isSuccess = false;

  factory TaskEditorPageBloc.create({
    required ResourceBloc userBloc,
    required ResourceBloc tasksBloc,
    required ResourceBloc taskCreateBloc,
    required ResourceBloc taskUpdateBloc,
  }) =>
      TaskEditorPageBloc(
        store: getIt.get(),
        userBloc: userBloc,
        tasksBloc: tasksBloc,
        taskCreateBloc: taskCreateBloc,
        taskUpdateBloc: taskUpdateBloc,
      );

  TaskEditorPageBloc({
    required this.store,
    required this.userBloc,
    required this.tasksBloc,
    required this.taskCreateBloc,
    required this.taskUpdateBloc,
  }) : super(const TaskEditorPageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_InitEvent>(_init);
    on<_ChangeTaskEvent>(_changeTask);
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
    final user = userBloc.state.data;

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

    emit(
      state.copyWith(
        task: task ?? state.task,
        loaded: loaded,
        loading: loading,
        error: error,
      ),
    );
  }

  void _init(_InitEvent event, emit) {
    final id = event.id.isEmpty ? UniqueKey().toString() : event.id;
    final List<TaskModel> tasks = tasksBloc.state.data ?? [];
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

  void _changeTask(_ChangeTaskEvent event, emit) {
    emit(state.copyWith(task: event.task));
  }

  void _submit(_SubmitEvent event, emit) {
    final task = event.task;
    final user = userBloc.state.data;

    if (user == null) {
      return;
    }

    if (task.id.isEmpty) {
      taskCreateBloc.add(
        ResourceEvent.fetch({'task': task, 'id': state.id, 'userId': user.id}),
      );

      return;
    }

    taskUpdateBloc.add(ResourceEvent.fetch(task));
  }

  void _clearError(_ClearErrorEvent event, emit) {
    final task = state.task;

    if (task == null) {
      return;
    }

    if (task.id.isEmpty) {
      taskCreateBloc.add(const ResourceEvent.clearError());

      return;
    }

    taskUpdateBloc.add(const ResourceEvent.clearError());
  }
}
