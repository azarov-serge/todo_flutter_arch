import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:todo/shared/services/hive_service/hive_client/init_hive.dart';

import 'application/application.dart';
import 'application/store/app_state.dart';

import 'shared/di/di.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDi();

  await initHive();

  runApp(StoreProvider<AppState>(
    store: getIt(),
    child: const Application(),
  ));
}

void main() async {
  runZonedGuarded(
    () => run(),
    (error, stack) => Container(
      padding: const EdgeInsets.all(20),
      child: Text('$error \n $stack'),
    ),
  );
}
