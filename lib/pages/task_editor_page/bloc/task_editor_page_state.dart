// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'task_editor_page_state.freezed.dart';

@freezed
class TaskEditorPageState with _$TaskEditorPageState {
  const factory TaskEditorPageState({
    @Default('') String id,
    @Default(false) bool loaded,
    @Default(false) bool loading,
    TaskModel? task,
    @Default('') String error,
  }) = _TaskEditorPageState;
}
