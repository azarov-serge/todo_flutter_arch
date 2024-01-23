// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'task_get_list_state.freezed.dart';

@freezed
class TaskGetListState with _$TaskGetListState {
  const factory TaskGetListState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    @Default([]) List<TaskModel> tasks,
  }) = _TaskGetListState;
}
