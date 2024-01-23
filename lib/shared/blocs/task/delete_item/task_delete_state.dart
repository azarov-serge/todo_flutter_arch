// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_delete_state.freezed.dart';

@freezed
class TaskDeleteState with _$TaskDeleteState {
  const factory TaskDeleteState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
  }) = _TaskDeleteState;
}
