part of 'user_block.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory UserEvent.fetchUser(String userId) = _FetchUserEvent;

  const factory UserEvent.clearFetchUserError() = _ClearFetchUserErrorEvent;

  const factory UserEvent.clear() = _ClearEvent;
}
