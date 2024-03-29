// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_page_state.freezed.dart';

@freezed
class SignInPageState with _$SignInPageState {
  const factory SignInPageState({
    @Default(false) bool loading,
    @Default('') String error,
  }) = _SignInPageState;
}
