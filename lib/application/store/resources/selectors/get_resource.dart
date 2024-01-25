import 'package:todo/application/store/app_state.dart';
import 'package:todo/shared/services/models/models.dart';

ResourceModel? getResource(
  AppState state, {
  required RequestModel request,
}) {
  final resource = state.resourcesState.resources[request.resourceId];

  return resource;
}
