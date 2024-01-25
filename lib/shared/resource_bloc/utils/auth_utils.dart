import 'package:redux/redux.dart';
import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/model/resource_bloc_params.dart';
import 'package:todo/shared/resource_bloc/utils/user_utils.dart';

import 'package:todo/shared/services/services.dart';

ResourceParamsModel getCheckAuthResourceParams() {
  return ResourceParamsModel(request: checkAuthRequest.copyWith());
}

ResourceParamsModel getSignInResourceParams() {
  final params = ResourceParamsModel(
    request: signInRequest.copyWith(),
    requestUpdater: (event) {
      return signInRequest.copyWith(data: event.data);
    },
  );

  return params;
}

ResourceParamsModel getSignUpResourceParams() {
  final params = ResourceParamsModel(
    request: signUpRequest.copyWith(),
    requestUpdater: (event) {
      return signUpRequest.copyWith(data: event.data);
    },
  );

  return params;
}

ResourceParamsModel getSignOutResourceParams() {
  final params = ResourceParamsModel(
    request: signOutRequest.copyWith(),
    requestUpdater: (event) {
      final Store<AppState> store = getIt();

      final UserModel? user = getUser(store);

      if (user == null) {
        return signOutRequest.copyWith();
      }

      return signOutRequest.copyWith(
        data: user.id,
      );
    },
  );

  return params;
}
