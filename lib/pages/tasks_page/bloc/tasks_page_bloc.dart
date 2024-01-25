import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';

import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/resource_bloc.dart';

import 'tasks_page_state.dart';

part 'tasks_page_event.dart';
part 'tasks_page_bloc.freezed.dart';

class TasksPageBloc extends Bloc<TasksPageEvent, TasksPageState> {
  final Store<AppState> store;
  final ResourceBloc tasksBloc;

  late final StreamSubscription<AppState> _storeListener;

  factory TasksPageBloc.create({
    required final ResourceBloc tasksBloc,
  }) =>
      TasksPageBloc(
        store: getIt.get(),
        tasksBloc: tasksBloc,
      );

  TasksPageBloc({
    required this.store,
    required this.tasksBloc,
  }) : super(const TasksPageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_ClearErrorEvent>(_clearError);

    _storeListener = store.onChange.listen((appState) {
      add(TasksPageEvent.changeState(appState: appState));
    });

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loading: tasksBloc.state.loading,
        tasks: tasksBloc.state.data ?? [],
        error: tasksBloc.state.error,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();

    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    emit(
      state.copyWith(
        loading: tasksBloc.state.loading,
        tasks: tasksBloc.state.data ?? [],
        error: tasksBloc.state.error,
      ),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) {
    tasksBloc.add(const ResourceEvent.clearError());
  }
}
