import 'package:redux/redux.dart';
import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/model/resource_bloc_params.dart';
import 'package:todo/shared/resource_bloc/utils/utils.dart';

import 'package:todo/shared/services/services.dart';

fetchTasks(store, {String? userId}) {
  fetchResourceThunk(
    store,
    request: taskGetListRequest.copyWith(
      data: userId ?? getUserId(store),
    ),
  );
}

List<TaskModel> getTasks(store) {
  return getResource(store, request: taskGetListRequest)?.data ?? [];
}

ResourceParamsModel getTasksResourceParams() {
  final Store<AppState> store = getIt();

  final params = ResourceParamsModel(
    request: taskGetListRequest.copyWith(),
    requestUpdater: (event) {
      return taskGetListRequest.copyWith(
        data: getUserId(store),
      );
    },
  );

  return params;
}

ResourceParamsModel getTaskCreateResourceParams() {
  final params = ResourceParamsModel(
    request: taskCreateRequest.copyWith(),
    requestUpdater: (event) {
      return taskCreateRequest.copyWith(
        id: event.data['id'],
        data: event.data,
      );
    },
  );

  params.changeState = (store) {
    final resource = getResource(store.state, request: params.request);

    if (resource?.loaded == true) {
      store.dispatch(
        ResourcesAction.deleteResource(resourceId: resource?.id ?? ''),
      );

      fetchTasks(store);
    }
  };

  return params;
}

ResourceParamsModel getTaskUpdateResourceParams({required id}) {
  final params = ResourceParamsModel(
    request: taskUpdateRequest.copyWith(id: id, data: id),
    requestUpdater: (event) {
      return taskUpdateRequest.copyWith(
        id: event.data.id,
        data: event.data,
      );
    },
  );

  params.changeState = (store) {
    final resource = getResource(store.state, request: params.request);

    if (resource?.loaded == true) {
      store.dispatch(
        ResourcesAction.deleteResource(resourceId: resource?.id ?? ''),
      );

      fetchTasks(store);
    }
  };

  return params;
}

ResourceParamsModel getTaskDeleteResourceParams({required id}) {
  final params = ResourceParamsModel(
    request: taskDeleteRequest.copyWith(id: id, data: id),
  );

  params.changeState = (store) {
    final resource = getResource(store.state, request: params.request);

    if (resource?.loaded == true) {
      store.dispatch(
        ResourcesAction.deleteResource(resourceId: resource?.id ?? ''),
      );

      fetchTasks(store);
    }
  };

  return params;
}
