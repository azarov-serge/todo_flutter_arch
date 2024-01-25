import 'package:redux/redux.dart';
import 'package:todo/application/store/resources/resources.dart';

import 'package:todo/shared/di/di.dart';

import 'package:todo/shared/services/models/models.dart';
import 'package:todo/shared/services/services.dart';

import 'package:todo/application/store/app_state.dart';

Future<void> fetchResourceThunk(
  Store<AppState> store, {
  required RequestModel request,
}) async {
  var resource = ResourceModel(
    id: request.resourceId,
    loaded: false,
    loading: true,
    data: null,
    error: '',
  );

  try {
    final FetchService fetchService = getIt();

    store.dispatch(ResourcesAction.updateResource(resource: resource));

    final response = await fetchService.request(request);

    resource = resource.copyWith(loading: false, loaded: true, data: response);
    store.dispatch(ResourcesAction.updateResource(resource: resource));
  } catch (error) {
    resource = resource.copyWith(
      loading: false,
      loaded: true,
      error: error.toString(),
    );
    store.dispatch(ResourcesAction.updateResource(resource: resource));
  }
}
