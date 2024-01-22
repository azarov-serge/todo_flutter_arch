import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:todo/shared/di/di.dart';

import 'hive_models/auth_hive_model.dart';
import 'hive_models/user_hive_model.dart';
import 'hive_models/task_hive_model.dart';
import 'hive_client.dart';

Future<void> initHive() async {
  if (kIsWeb) {
    Hive.initFlutter();
  } else {
    final Directory appDocumentDir = await getApplicationDocumentsDirectory();

    print('***** Hive path: ${appDocumentDir.path}');
    await Hive.initFlutter(appDocumentDir.path);
  }

  Hive.registerAdapter(AuthHiveModelAdapter());
  Hive.registerAdapter(UserHiveModelAdapter());
  Hive.registerAdapter(TaskHiveModelAdapter());

  final hiveClient = getIt<HiveClient>();
  await hiveClient.hiveOpenBox();
}
