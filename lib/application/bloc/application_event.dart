part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory ApplicationEvent.init() = _InitEvent;

  const factory ApplicationEvent.clearData() = _ClearDataEvent;
}
