// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_state.freezed.dart';

@freezed
class ResourceState<D> with _$ResourceState {
  const factory ResourceState({
    @Default(false) bool loading,
    @Default(false) bool loaded,
    @Default('') String error,
    D? data,
  }) = _ResourceState;
}
