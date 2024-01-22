import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/blocs/auth/auth_bloc.dart';
import 'package:todo/shared/blocs/task/task_bloc.dart';
import 'package:todo/shared/blocs/user/user_block.dart';
import 'package:todo/shared/di/di.dart';

import 'home_page_state.dart';

part 'home_page_event.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final Store<AppState> store;
  final AuthBloc authBloc = getIt();
  final UserBloc userBloc = getIt();
  final TaskBloc taskBloc = getIt();

  late final StreamSubscription<AppState> _storeListener;

  factory HomePageBloc.create() => HomePageBloc(
        store: getIt.get(),
      );

  HomePageBloc({required this.store}) : super(const HomePageState()) {
    on<_ChangeStateEvent>(_changeState);
    on<_SignOutEvent>(_signOut);
    on<_LoadInitialDataEvent>(_loadInitialData);

    _storeListener = store.onChange.listen((appState) {
      add(HomePageEvent.changeState(appState: appState));
    });
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final UserModel? user = userBloc.state.user;
    final tasksLoaded = taskBloc.state.getListResource.loaded;
    final tasksLoading = taskBloc.state.getListResource.loading;

    final loading = authBloc.state.checkAuthResource.loading == true ||
        (userBloc.state.fetchUserResource.loading == true);

    if (user != null && !tasksLoaded && !tasksLoading) {
      add(const HomePageEvent.loadInitialData());
    }

    emit(state.copyWith(
      loading: loading,
      signOutLoading: authBloc.state.signOutResource.loading,
      user: user,
    ));
  }

  void _signOut(_SignOutEvent event, emit) {
    authBloc.add(const AuthEvent.signOut());
  }

  void _loadInitialData(_LoadInitialDataEvent event, emit) {
    final UserModel? user = userBloc.state.user;
    if (user == null) {
      return;
    }

    taskBloc.add(TaskEvent.fetchList(user.id));
  }
}
