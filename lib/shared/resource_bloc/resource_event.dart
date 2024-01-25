part of 'resource_bloc.dart';

@freezed
class ResourceEvent with _$ResourceEvent {
  const factory ResourceEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  // ignore: unnecessary_question_mark
  const factory ResourceEvent.fetch(dynamic data) = _FetchDataEvent;

  const factory ResourceEvent.clearError() = _ClearErrorEvent;

  const factory ResourceEvent.deleteResource() = _DeleteResourceEvent;

  const factory ResourceEvent.clear() = _ClearEvent;
}
