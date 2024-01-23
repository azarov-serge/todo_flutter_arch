part of 'task_create_bloc.dart';

@freezed
class TaskCreateEvent with _$TaskCreateEvent {
  const factory TaskCreateEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TaskCreateEvent.create(
    TaskModel task,
    String id,
  ) = _CreateEvent;

  const factory TaskCreateEvent.clearError() = _ClearErrorEvent;

  const factory TaskCreateEvent.deleteResource() = _DeleteResourceEvent;

  const factory TaskCreateEvent.clear() = _ClearEvent;
}
