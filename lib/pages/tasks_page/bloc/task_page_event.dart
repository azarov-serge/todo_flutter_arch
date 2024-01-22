part of 'task_page_bloc.dart';

@freezed
class TaskPageEvent with _$TaskPageEvent {
  const factory TaskPageEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TaskPageEvent.deleteTask(String id) = _DeleteTaskEvent;

  const factory TaskPageEvent.clearError() = _ClearErrorEvent;
}
