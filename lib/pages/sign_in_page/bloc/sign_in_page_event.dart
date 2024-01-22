part of 'sign_in_page_bloc.dart';

@freezed
class SignInPageEvent with _$SignInPageEvent {
  const factory SignInPageEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory SignInPageEvent.signIn({
    required String login,
    required String password,
  }) = _SignInEvent;

  const factory SignInPageEvent.clearError() = _ClearErrorEvent;
}
