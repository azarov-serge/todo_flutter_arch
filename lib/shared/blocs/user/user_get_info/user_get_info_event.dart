part of 'user_get_info_block.dart';

@freezed
class UserGetInfoEvent with _$UserGetInfoEvent {
  const factory UserGetInfoEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory UserGetInfoEvent.fetchUser(String userId) = _FetchUserEvent;

  const factory UserGetInfoEvent.clearError() = _ClearErrorEvent;

  const factory UserGetInfoEvent.deleteResource() = _DeleteResourceEvent;

  const factory UserGetInfoEvent.clear() = _ClearEvent;
}
