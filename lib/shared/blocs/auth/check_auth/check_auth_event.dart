part of 'check_auth_bloc.dart';

@freezed
class CheckAuthEvent with _$CheckAuthEvent {
  const factory CheckAuthEvent.changeState({
    required AppState appState,
  }) = _ChangeStateEvent;

  /// Сейчас это просто проверка, что в Box есть userId, в реальном кейсе это может быть запрос по refrehToken
  const factory CheckAuthEvent.check() = _CheckEvent;

  const factory CheckAuthEvent.deleteResource() = _DeleteResourceEvent;

  const factory CheckAuthEvent.clear() = _ClearEvent;
}
