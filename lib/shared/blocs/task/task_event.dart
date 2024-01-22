part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory TaskEvent.fetchList(String userId) = _FetchListEvent;

  const factory TaskEvent.createItem(TaskModel task, String id) =
      _CreateItemEvent;

  const factory TaskEvent.updateItem(TaskModel task) = _UpdateItemEvent;

  const factory TaskEvent.deleteItem(String id) = _DeleteItemEvent;

  const factory TaskEvent.removeResource(String resourceName) =
      _RemoveResourceEvent;

  const factory TaskEvent.clearResourceError(RequestModel request) =
      _ClearResourceErrorEvent;

  const factory TaskEvent.clear() = _ClearEvent;
}
