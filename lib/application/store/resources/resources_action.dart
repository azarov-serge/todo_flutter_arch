// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todo/shared/services/models/models.dart';

part 'resources_action.freezed.dart';

@freezed
class ResourcesAction with _$ResourcesAction {
  const factory ResourcesAction.updateResource({
    required ResourceModel resource,
  }) = _UpdateResource;

  const factory ResourcesAction.deleteResource({
    required String resourceName,
  }) = _DeleteResource;

  const factory ResourcesAction.clear() = _Clear;
}
