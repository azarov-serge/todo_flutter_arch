// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todo/shared/services/models/models.dart';

part 'resources_state.freezed.dart';
part 'resources_state.g.dart';

@freezed
class ResourcesState with _$ResourcesState {
  const ResourcesState._();

  const factory ResourcesState({
    @JsonKey(name: 'resources')
    @Default({})
        Map<String, ResourceModel> resources,
  }) = _ResourcesState;

  factory ResourcesState.fromJson(Map<String, dynamic> json) =>
      _$ResourcesStateFromJson(json);
}
