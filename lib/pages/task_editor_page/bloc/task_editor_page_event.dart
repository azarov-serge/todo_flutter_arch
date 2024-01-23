part of 'task_editor_page_bloc.dart';

@freezed
class TaskEditorPageEvent with _$TaskEditorPageEvent {
  const factory TaskEditorPageEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TaskEditorPageEvent.init(String id) = _InitEvent;

  const factory TaskEditorPageEvent.changeTask(TaskModel task) =
      _ChangeTaskEvent;

  const factory TaskEditorPageEvent.submit(TaskModel task) = _SubmitEvent;

  const factory TaskEditorPageEvent.clearError() = _ClearErrorEvent;
}
