// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/shared/services/models/models.dart';

import 'package:todo/shared/services/services.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(ResourceModel(name: '')) ResourceModel signInResource,
    @Default(ResourceModel(name: '')) ResourceModel signUpResource,
    @Default(ResourceModel(name: '')) ResourceModel signOutResource,
    @Default(ResourceModel(name: '')) ResourceModel checkAuthResource,
  }) = _AuthState;
}
