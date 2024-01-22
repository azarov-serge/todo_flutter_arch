import 'package:todo/shared/services/models/models.dart';

// #region auth
const checkAuthRequest = RequestModel(url: 'auth/check');
const signInRequest = RequestModel(url: 'auth/signIn');
const signUpRequest = RequestModel(url: 'auth/signUp');
const signOutRequest = RequestModel(url: 'auth/signOut');
// #endregion

// #region user
const fetchUserRequest = RequestModel(url: 'user/fetchUser');
// #endregion

// #region categories
const taskGetListRequest = RequestModel(url: 'task/fetchList');
const taskCreateRequest = RequestModel(
  url: 'task',
  method: 'POST',
);
const taskUpdateRequest = RequestModel(
  url: 'task',
  method: 'PATCH',
);
const taskDeleteRequest = RequestModel(
  url: 'task',
  method: 'DELETE',
);
// #endregion
