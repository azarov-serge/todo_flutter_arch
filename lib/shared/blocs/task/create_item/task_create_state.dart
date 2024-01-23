// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'task_create_state.freezed.dart';

@freezed
class TaskCreateState with _$TaskCreateState {
  const factory TaskCreateState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    TaskModel? task,
  }) = _TaskCreateState;
}
