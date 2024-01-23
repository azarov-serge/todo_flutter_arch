part of 'task_delete_bloc.dart';

@freezed
class TaskDeleteEvent with _$TaskDeleteEvent {
  const factory TaskDeleteEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TaskDeleteEvent.delete(String id) = _DeleteEvent;

  const factory TaskDeleteEvent.clearError() = _ClearErrorEvent;

  const factory TaskDeleteEvent.deleteResource() = _DeleteResourceEvent;

  const factory TaskDeleteEvent.clear() = _ClearEvent;
}
