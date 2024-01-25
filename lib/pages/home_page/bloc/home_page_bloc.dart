import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';

import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/resource_bloc.dart';

import 'home_page_state.dart';

part 'home_page_event.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final Store<AppState> store;

  final ResourceBloc signOutBloc;
  final ResourceBloc userBloc;
  final ResourceBloc tasksBloc;

  bool _inited = false;

  late final StreamSubscription<AppState> _storeListener;

  factory HomePageBloc.create({
    required final ResourceBloc signOutBloc,
    required final ResourceBloc userBloc,
    required final ResourceBloc tasksBloc,
  }) =>
      HomePageBloc(
        store: getIt.get(),
        signOutBloc: signOutBloc,
        userBloc: userBloc,
        tasksBloc: tasksBloc,
      );

  HomePageBloc({
    required this.store,
    required this.signOutBloc,
    required this.tasksBloc,
    required this.userBloc,
  }) : super(const HomePageState()) {
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
    final UserModel? user = userBloc.state.data;

    final loading =
        signOutBloc.state.loading || (userBloc.state.loading && user == null);

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
    signOutBloc.add(const ResourceEvent.fetch(null));
  }

  void _loadInitialData(_LoadInitialDataEvent event, emit) {
    final UserModel? user = userBloc.state.data;
    if (user == null) {
      return;
    }

    tasksBloc.add(ResourceEvent.fetch(user.id));
  }

  void _clearError(_ClearErrorEvent event, emit) {
    signOutBloc.add(const ResourceEvent.clearError());
  }
}
