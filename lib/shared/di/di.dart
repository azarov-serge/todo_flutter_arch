import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/store.dart';
import 'package:todo/shared/blocs/auth/auth_bloc.dart';
import 'package:todo/shared/blocs/task/task_bloc.dart';

import 'package:todo/shared/services/hive_service/hive_client/hive_client.dart';
import 'package:todo/shared/services/hive_service/hive_client/hive_client_impl.dart';

import 'package:todo/shared/services/services.dart';

import 'package:todo/application/bloc/application_bloc.dart';

import 'package:todo/shared/blocs/user/user_block.dart';

final GetIt getIt = GetIt.instance;

void initDi() {
  getIt.registerSingleton<HiveClient>(HiveClientImpl());

  getIt.registerSingleton<FetchService>(HiveService());

  getIt.registerSingleton<Store<AppState>>(store());

  getIt.registerLazySingleton(ApplicationBloc.create);
  getIt.registerLazySingleton(AuthBloc.create);
  getIt.registerLazySingleton(UserBloc.create);
  getIt.registerLazySingleton(TaskBloc.create);
}
