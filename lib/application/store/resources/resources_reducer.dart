import 'resources_action.dart';
import 'resources_state.dart';

ResourcesState resourcesReducer(ResourcesState state, dynamic action) {
  if (action is ResourcesAction) {
    return action.maybeMap<ResourcesState>(
      updateResource: (payload) => state.copyWith(resources: {
        ...state.resources,
        payload.resource.name: payload.resource
      }),
      deleteResource: (payload) {
        final resources = {...state.resources};
        resources.remove(payload.resourceName);

        return state.copyWith(resources: resources);
      },
      clear: (payload) => const ResourcesState(),
      orElse: () {
        return state;
      },
    );
  }

  return state;
}
