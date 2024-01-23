// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

part 'user_get_info_state.freezed.dart';

@freezed
class UserGetInfoState with _$UserGetInfoState {
  const factory UserGetInfoState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    UserModel? user,
  }) = _UserGetInfoState;
}
