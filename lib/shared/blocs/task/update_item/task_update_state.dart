// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'task_update_state.freezed.dart';

@freezed
class TaskUpdateState with _$TaskUpdateState {
  const factory TaskUpdateState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    TaskModel? task,
  }) = _TaskUpdateState;
}
