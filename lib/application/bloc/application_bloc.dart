import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/router/router.dart';
import 'package:todo/application/store/app_state.dart';

import 'package:todo/shared/blocs/auth/auth.dart';
import 'package:todo/shared/blocs/user/user.dart';

import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';

import 'application_state.dart';

part 'application_event.dart';
part 'application_bloc.freezed.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final Store<AppState> store;
  final CheckAuthBloc authBloc;

  final UserGetInfoBloc userBloc = getIt();
  final SignOutBloc signOutBloc = getIt();

  bool _inited = false;

  late final StreamSubscription<AppState> _storeListener;

  factory ApplicationBloc.create({required CheckAuthBloc authBloc}) =>
      ApplicationBloc(store: getIt.get(), authBloc: authBloc);

  ApplicationBloc({required this.store, required this.authBloc})
      : super(const ApplicationState()) {
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
    final authState = authBloc.state;

    final userId = authState.userId;

    // Если не авторизован, отправить на форму авторизации
    if (authBloc.state.loaded == true && userId.isEmpty && _inited == false
        // Хз как проверить. что текущий поуть не signInRoute
        // 2 раза рендерится SignInPage
        ) {
      _inited = true;

      navigatorKey.currentState?.pushNamed(signInRoute);
      return;
    }

    // Если авторизация прошла успешна, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (authState.loaded == true &&
        userId.isNotEmpty &&
        _inited == false &&
        userBloc.state.user == null) {
      _inited = true;

      userBloc.add(UserGetInfoEvent.fetchUser(userId));

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
    authBloc.add(const CheckAuthEvent.check());
  }

  void _clearData(_ClearDataEvent event, emit) {
    authBloc.add(const CheckAuthEvent.clear());
    signOutBloc.add(const SignOutEvent.clear());
    userBloc.add(const UserGetInfoEvent.clear());
    _inited = false;
  }
}
