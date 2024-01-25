import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/router/router.dart';
import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';

import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/resource_bloc/resource_bloc.dart';

import 'application_state.dart';

part 'application_event.dart';
part 'application_bloc.freezed.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final Store<AppState> store;
  final ResourceBloc checkAuthBloc;
  final ResourceBloc userBloc;
  final ResourceBloc signOutBloc;

  bool _inited = false;

  late final StreamSubscription<AppState> _storeListener;

  factory ApplicationBloc.create({
    required final ResourceBloc checkAuthBloc,
    required final ResourceBloc userBloc,
    required final ResourceBloc signOutBloc,
  }) =>
      ApplicationBloc(
        store: getIt.get(),
        checkAuthBloc: checkAuthBloc,
        userBloc: userBloc,
        signOutBloc: signOutBloc,
      );

  ApplicationBloc({
    required this.store,
    required this.checkAuthBloc,
    required this.userBloc,
    required this.signOutBloc,
  }) : super(const ApplicationState()) {
    on<_ChangeStateEvent>(_changeState);
    on<_InitEvent>(_init);
    on<_ClearDataEvent>(_clearData);

    _storeListener = store.onChange.listen((appState) {
      add(ApplicationEvent.changeState(appState: appState));
    });
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    // Проверяем, авторизован пользователь или нет
    final userId = checkAuthBloc.state.data;

    // Если не авторизован, отправить на форму авторизации
    if (checkAuthBloc.state.loaded == true &&
        userId == null &&
        _inited == false) {
      _inited = true;

      navigatorKey.currentState?.pushNamed(signInRoute);
      return;
    }

    final UserModel? user = userBloc.state.data;

    // Если авторизация прошла успешна, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (checkAuthBloc.state.loaded == true &&
        userId != null &&
        _inited == false &&
        user == null) {
      _inited = true;

      userBloc.add(ResourceEvent.fetch(userId));

      return;
    }

    // Если произошел выход, очистить состояния
    if (signOutBloc.state.loaded == true && signOutBloc.state.error.isEmpty) {
      navigatorKey.currentState?.pushNamed(signInRoute);

      add(const ApplicationEvent.clearData());
      return;
    }
  }

  void _init(_InitEvent event, emit) {
    checkAuthBloc.add(const ResourceEvent.fetch(null));
  }

  void _clearData(_ClearDataEvent event, emit) {
    checkAuthBloc.add(const ResourceEvent.clear());
    signOutBloc.add(const ResourceEvent.clear());
    userBloc.add(const ResourceEvent.clear());
    _inited = false;
  }
}
