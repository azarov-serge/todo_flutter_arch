import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/store.dart';

import 'package:todo/shared/services/hive_service/hive_client/hive_client.dart';
import 'package:todo/shared/services/hive_service/hive_client/hive_client_impl.dart';

import 'package:todo/shared/services/services.dart';

final GetIt getIt = GetIt.instance;

void initDi() {
  getIt.registerSingleton<HiveClient>(HiveClientImpl());
  getIt.registerSingleton<FetchService>(HiveService());

  getIt.registerSingleton<Store<AppState>>(store());
}
