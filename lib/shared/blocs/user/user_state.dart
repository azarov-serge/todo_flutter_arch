// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/models/models.dart';

import 'package:todo/shared/services/services.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(ResourceModel(name: '')) ResourceModel fetchUserResource,
    UserModel? user,
  }) = _UserState;
}
