part of 'tasks_page_bloc.dart';

@freezed
class TasksPageEvent with _$TasksPageEvent {
  const factory TasksPageEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TasksPageEvent.clearError() = _ClearErrorEvent;
}
