part of 'sign_up_page_bloc.dart';

@freezed
class SignUpPageEvent with _$SignUpPageEvent {
  const factory SignUpPageEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory SignUpPageEvent.signUp({
    required String login,
    required String password,
  }) = _SignUpEvent;

  const factory SignUpPageEvent.clearError() = _ClearErrorEvent;
}
