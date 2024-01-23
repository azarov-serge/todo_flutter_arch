part of 'sign_out_bloc.dart';

@freezed
class SignOutEvent with _$SignOutEvent {
  const factory SignOutEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory SignOutEvent.signOut() = _SignOutEvent;

  const factory SignOutEvent.clearError() = _ClearErrorEvent;

  const factory SignOutEvent.deleteResource() = _DeleteResourceEvent;

  const factory SignOutEvent.clear() = _ClearEvent;
}
