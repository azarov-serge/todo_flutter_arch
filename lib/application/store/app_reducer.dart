import 'resources/resources.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  print('action: $action');

  return AppState(
    resourcesState: resourcesReducer(state.resourcesState, action),
  );
}
