part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  const factory HomePageEvent.loadInitialData() = _LoadInitialDataEvent;

  const factory HomePageEvent.clearError() = _ClearErrorEvent;

  const factory HomePageEvent.signOut() = _SignOutEvent;
}
