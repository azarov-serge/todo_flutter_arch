part of 'task_get_list_bloc.dart';

@freezed
class TaskGetListEvent with _$TaskGetListEvent {
  const factory TaskGetListEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TaskGetListEvent.fetchList(String userId) = _FetchListEvent;

  const factory TaskGetListEvent.clearError() = _ClearErrorEvent;

  const factory TaskGetListEvent.deleteResource() = _DeleteResourceEvent;

  const factory TaskGetListEvent.clear() = _ClearEvent;
}
