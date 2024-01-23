// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    @Default('') String userId,
  }) = _SignUpState;
}
