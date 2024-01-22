import 'package:todo/models/models.dart';

abstract class UserService {
  Future<UserModel> fetchUser(String userId);
}
