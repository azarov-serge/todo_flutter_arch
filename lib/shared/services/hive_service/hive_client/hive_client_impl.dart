import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'hive_models/hive_models.dart';
import 'hive_client.dart';

class HiveClientImpl implements HiveClient {
  @override
  late final Box<AuthHiveModel> authBox;
  @override
  late final Box<UserHiveModel> userBox;
  @override
  late final Box<TaskHiveModel> tasksBox;

  @override
  Future<void> hiveOpenBox() async {
    authBox = await Hive.openBox('auth');
    userBox = await Hive.openBox('user');
    tasksBox = await Hive.openBox('tasksBox');
  }
}
