import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/shared/blocs/task/task_bloc.dart';
import 'package:todo/shared/blocs/user/user_block.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/services.dart';

import 'task_page_state.dart';

part 'task_page_event.dart';
part 'task_page_bloc.freezed.dart';

class TaskPageBloc extends Bloc<TaskPageEvent, TaskPageState> {
  final Store<AppState> store;
  final TaskBloc taskBloc = getIt();
  final UserBloc userBloc = getIt();

  late final StreamSubscription<AppState> _storeListener;

  factory TaskPageBloc.create() => TaskPageBloc(
        store: getIt.get(),
      );

  TaskPageBloc({required this.store}) : super(const TaskPageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_DeleteTaskEvent>(_deleteTask);

    on<_ClearErrorEvent>(_clearError);

    _storeListener = store.onChange.listen((appState) {
      add(TaskPageEvent.changeState(appState: appState));
    });

    final tasksResouce = taskBloc.state.getListResource;

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loading: tasksResouce.loading,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();

    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final tasksResouce = taskBloc.state.getListResource;

    emit(
      state.copyWith(
        loading: tasksResouce.loading,
        error: tasksResouce.error,
      ),
    );
  }

  void _deleteTask(_DeleteTaskEvent event, emit) {
    taskBloc.add(TaskEvent.deleteItem(event.id));
  }

  void _clearError(_ClearErrorEvent event, emit) {
    taskBloc.add(TaskEvent.clearResourceError(taskGetListRequest.copyWith()));
  }
}
