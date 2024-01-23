// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_out_state.freezed.dart';

@freezed
class SignOutState with _$SignOutState {
  const factory SignOutState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
  }) = _SignOutState;
}
