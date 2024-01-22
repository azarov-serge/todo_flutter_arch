import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import 'package:todo/application/router/router.dart';
import 'package:todo/application/store/app_state.dart';
import 'package:todo/models/models.dart';
import 'package:todo/shared/blocs/auth/auth_bloc.dart';
import 'package:todo/shared/blocs/user/user_block.dart';
import 'package:todo/shared/constants/global.dart';
import 'package:todo/shared/di/di.dart';

import 'application_state.dart';

part 'application_event.dart';
part 'application_bloc.freezed.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final Store<AppState> store;
  final AuthBloc authBloc = getIt();
  final UserBloc userBloc = getIt();

  late final StreamSubscription<AppState> _storeListener;

  factory ApplicationBloc.create() => ApplicationBloc(
        store: getIt.get(),
      );

  ApplicationBloc({required this.store}) : super(const ApplicationState()) {
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
    final checkAuthResource = authBloc.state.checkAuthResource;
    final userResource = userBloc.state.fetchUserResource;
    final UserModel? user = userResource.data;

    final checkAuthLoaded = checkAuthResource.loaded;
    String? userId = checkAuthResource.data;

    // Если не авторизован, отправить на форму авторизации
    if (checkAuthLoaded == true &&
        userId == null &&
        state.inited == false &&
        // Хз как проверить. что текущий поуть не signInRoute, поэтому такой костыль
        // Иначе 2 раза рендерится SignInPage
        authBloc.signInMode == false) {
      emit(state.copyWith(inited: true));

      authBloc.signInMode = true;
      navigatorKey.currentState?.pushNamed(signInRoute);
      return;
    }

    // Если авторизация прошла успешна, загружаем инфу по пользователю (или другие данные на старте проекта)
    if (checkAuthLoaded == true &&
        userId != null &&
        state.inited == false &&
        user == null) {
      emit(state.copyWith(inited: true));

      userBloc.add(UserEvent.fetchUser(userId));

      return;
    }

    final signOutResource = authBloc.state.signOutResource;
    final signOutLoaded = signOutResource.loaded;

    // Если произошел выход, очистить состояния
    if (signOutLoaded == true) {
      add(const ApplicationEvent.clearData());
      return;
    }
  }

  void _init(_InitEvent event, emit) {
    authBloc.add(const AuthEvent.checkAuth());
  }

  void _clearData(_ClearDataEvent event, emit) {
    authBloc.add(const AuthEvent.clear());
    userBloc.add(const UserEvent.clear());
    emit(state.copyWith(inited: false));
  }
}
