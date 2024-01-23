import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/blocs/auth/auth.dart';

import 'package:todo/shared/blocs/task/task.dart';
import 'package:todo/shared/blocs/user/user.dart';

import 'package:todo/shared/di/di.dart';

import 'home_page_state.dart';

part 'home_page_event.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final Store<AppState> store;

  final SignOutBloc signOutBloc = getIt();
  final UserGetInfoBloc userBloc = getIt();
  final TaskGetListBloc tasksBloc = getIt();

  bool _inited = false;

  late final StreamSubscription<AppState> _storeListener;

  factory HomePageBloc.create() => HomePageBloc(
        store: getIt.get(),
      );

  HomePageBloc({required this.store}) : super(const HomePageState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_SignOutEvent>(_signOut);

    on<_LoadInitialDataEvent>(_loadInitialData);

    on<_ClearErrorEvent>(_clearError);

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

    final loading = signOutBloc.state.loading ||
        (userBloc.state.loading && userBloc.state.user == null);

    if (user != null &&
        !tasksBloc.state.loaded &&
        !tasksBloc.state.loading &&
        !_inited) {
      _inited = true;

      add(const HomePageEvent.loadInitialData());

      return;
    }

    emit(state.copyWith(
      loading: loading,
      user: user,
      error: signOutBloc.state.error,
    ));
  }

  void _signOut(_SignOutEvent event, emit) {
    signOutBloc.add(const SignOutEvent.signOut());
  }

  void _loadInitialData(_LoadInitialDataEvent event, emit) {
    final UserModel? user = userBloc.state.user;
    if (user == null) {
      return;
    }

    tasksBloc.add(TaskGetListEvent.fetchList(user.id));
  }

  void _clearError(_ClearErrorEvent event, emit) {
    signOutBloc.add(const SignOutEvent.clearError());
  }
}
