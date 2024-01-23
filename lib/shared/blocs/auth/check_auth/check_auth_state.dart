// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_auth_state.freezed.dart';

@freezed
class CheckAuthState with _$CheckAuthState {
  const factory CheckAuthState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    @Default('') String userId,
  }) = _CheckAuthState;
}
