part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory SignUpEvent.signUp({
    required String login,
    required String password,
  }) = _SignUpEvent;

  const factory SignUpEvent.clearError() = _ClearErrorEvent;

  const factory SignUpEvent.deleteResource() = _DeleteResourceEvent;

  const factory SignUpEvent.clear() = _ClearEvent;
}
