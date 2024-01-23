// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    @Default('') String userId,
  }) = _SignInState;
}
