part of 'task_update_bloc.dart';

@freezed
class TaskUpdateEvent with _$TaskUpdateEvent {
  const factory TaskUpdateEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TaskUpdateEvent.update(TaskModel task) = _UpdateEvent;

  const factory TaskUpdateEvent.clearError() = _ClearErrorEvent;

  const factory TaskUpdateEvent.deleteResource() = _DeleteResourceEvent;

  const factory TaskUpdateEvent.clear() = _ClearEvent;
}
