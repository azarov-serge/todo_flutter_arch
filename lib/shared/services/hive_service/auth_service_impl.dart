import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/hive_service/hive_client/hive_client.dart';
import 'package:todo/shared/services/hive_service/hive_client/hive_models/auth_hive_model.dart';
import 'package:todo/shared/services/hive_service/hive_client/hive_models/user_hive_model.dart';

import '../abstract_services/auth_service.dart';

class AuthServiceImpl implements AuthService {
  final HiveClient _hiveClient = getIt();
  @override
  Future<String?> checkAuth() async {
    await Future.delayed(const Duration(milliseconds: 1900));

    if (_hiveClient.authBox.length == 0) {
      return null;
    }

    final values = _hiveClient.authBox.values.toList();

    return values[0].id;
  }

  /// Return userId
  @override
  Future<String> signIn({
    required String login,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 900));
    if (_hiveClient.userBox.length == 0) {
      throw Exception('User not found');
    }

    final user =
        _hiveClient.userBox.values.firstWhere((user) => user.login == login);

    if (user == null) {
      throw Exception('User not found');
    }

    if (user.password != password) {
      throw Exception('Incorrect password');
    }
    _hiveClient.authBox.add(AuthHiveModel(id: user.id));

    return user.id;
  }

  /// Return userId
  @override
  Future<String> signUp({
    required String login,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 900));

    if (_hiveClient.userBox.length == 0) {
      final userHive = _registerUser(login: login, password: password);

      return userHive.id;
    }

    final existUser =
        _hiveClient.userBox.values.firstWhere((user) => user.login == login);

    if (existUser != null) {
      throw Exception('User already exists');
    }

    final userHive = _registerUser(login: login, password: password);

    return userHive.id;
  }

  @override
  Future<void> signOut(String userId) async {
    await Future.delayed(const Duration(milliseconds: 900));

    _hiveClient.authBox.clear();
  }

  UserHiveModel _registerUser({
    required String login,
    required String password,
  }) {
    final userHive = UserHiveModel(login: login, password: password);
    _hiveClient.userBox.put(userHive.id, userHive);
    _hiveClient.authBox.add(AuthHiveModel(id: userHive.id));

    return userHive;
  }
}
