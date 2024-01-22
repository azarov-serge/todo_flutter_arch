import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'hive_models/hive_models.dart';

abstract class HiveClient {
  Future<void> hiveOpenBox();
  Box<AuthHiveModel> get authBox;
  Box<UserHiveModel> get userBox;
  Box<TaskHiveModel> get tasksBox;
}
