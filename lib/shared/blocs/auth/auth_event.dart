part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  /// Сейчас это просто проверка, что в Box есть userId, в реальном кейсе это может быть запрос по refrehToken
  const factory AuthEvent.checkAuth() = _CheckAuthEvent;
  const factory AuthEvent.clearUserId() = _ClearUserIdEvent;

  const factory AuthEvent.signIn({
    required String login,
    required String password,
  }) = _SignInEvent;

  const factory AuthEvent.clearSignInError() = _ClearSignInErrorEvent;

  const factory AuthEvent.signUp({
    required String login,
    required String password,
  }) = _SignUpEvent;

  const factory AuthEvent.clearSignUpError() = _ClearSignUpErrorEvent;

  const factory AuthEvent.signOut() = _SignOutEvent;

  const factory AuthEvent.clearSignOutError() = _ClearSignOutErrorEvent;

  const factory AuthEvent.clear() = _ClearEvent;
}
