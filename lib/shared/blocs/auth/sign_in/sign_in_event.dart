part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory SignInEvent.signIn({
    required String login,
    required String password,
  }) = _SignInEvent;

  const factory SignInEvent.clearError() = _ClearErrorEvent;

  const factory SignInEvent.deleteResource() = _DeleteResourceEvent;

  const factory SignInEvent.clear() = _ClearEvent;
}
