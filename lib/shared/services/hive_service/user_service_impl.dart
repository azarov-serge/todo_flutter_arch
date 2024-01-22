import 'package:todo/models/models.dart';
import 'package:todo/shared/di/di.dart';

import '../abstract_services/user_service.dart';
import 'hive_client/hive_client.dart';

class UserServiceImpl extends UserService {
  final HiveClient _hiveClient = getIt();

  @override
  Future<UserModel> fetchUser(String userId) async {
    await Future.delayed(const Duration(milliseconds: 900));
    if (_hiveClient.authBox.length == 0) {
      throw Exception('User not found');
    }

    final user = _hiveClient.userBox.get(userId);

    if (user == null) {
      throw Exception('User not found');
    }

    return user.toModel();
  }
}
