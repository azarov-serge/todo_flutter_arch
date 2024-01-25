import 'package:redux/redux.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';

import 'package:todo/shared/resource_bloc/model/resource_bloc_params.dart';
import 'package:todo/shared/services/services.dart';

import 'package:todo/models/models.dart';

fetchUser(Store<AppState> store) {
  fetchResourceThunk(store, request: userGetInfoRequest);
}

String getUserId(store) {
  String id = '';
  final checkAuthResource = getResource(store.state, request: checkAuthRequest);
  id = checkAuthResource?.data ?? id;

  if (id.isEmpty) {
    final signInResource = getResource(store.state, request: signInRequest);

    id = signInResource?.data ?? id;
  }

  final signUpResource = getResource(store.state, request: signUpRequest);

  return signUpResource?.data ?? id;
}

UserModel? getUser(store) {
  final id = getUserId(store);

  return getResource(
    store.state,
    request: userGetInfoRequest.copyWith(data: id),
  )?.data;
}

ResourceParamsModel getUserInfoResourceParams() {
  final params = ResourceParamsModel(
    request: userGetInfoRequest.copyWith(),
    requestUpdater: (event) {
      return userGetInfoRequest.copyWith(data: event.data);
    },
  );

  return params;
}
