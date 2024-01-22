// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todo/shared/services/models/models.dart';

part 'resources_action.freezed.dart';

@freezed
class ResourcesAction with _$ResourcesAction {
  const factory ResourcesAction.updateResource({
    required ResourceModel resource,
  }) = _UpdateResource;

  const factory ResourcesAction.removeResource({
    required String resourceName,
  }) = _RemoveResource;

  const factory ResourcesAction.clear() = _Clear;
}
