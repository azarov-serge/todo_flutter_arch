// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_page_state.freezed.dart';

@freezed
class SignUpPageState with _$SignUpPageState {
  const factory SignUpPageState({
    @Default(false) bool loading,
    @Default('') String error,
  }) = _SignUpPageState;
}
