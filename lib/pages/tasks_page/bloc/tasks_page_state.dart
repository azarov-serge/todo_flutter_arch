// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'tasks_page_state.freezed.dart';

@freezed
class TasksPageState with _$TasksPageState {
  const factory TasksPageState({
    @Default(false) bool loading,
    @Default([]) List<TaskModel> tasks,
    @Default('') String error,
  }) = _TasksPageState;
}
