import 'dart:async';

// ignore: depend_on_referenced_packages, unused_import
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';

import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/models/models.dart';
import 'package:todo/shared/services/requests.dart';

import 'user_get_info_state.dart';

part 'user_get_info_block.freezed.dart';
part 'user_get_info_event.dart';

class UserGetInfoBloc extends Bloc<UserGetInfoEvent, UserGetInfoState> {
  final Store<AppState> store;
  late final StreamSubscription<AppState> _storeListener;

  factory UserGetInfoBloc.create() => UserGetInfoBloc(
        store: getIt.get(),
      );

  UserGetInfoBloc({required this.store}) : super(const UserGetInfoState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_FetchUserEvent>(_fetchUser);
    on<_ClearErrorEvent>(_clearError);

    on<_DeleteResourceEvent>(_deleteResource);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(UserGetInfoEvent.changeState(appState: appState));
    });

    final resource = getResource(store.state, request: fetchUserRequest) ??
        ResourceModel(name: fetchUserRequest.resourceName);

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        user: resource.data,
        error: resource.error,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final resource = getResource(store.state, request: fetchUserRequest);

    if (resource == null) {
      return;
    }

    emit(
      state.copyWith(
        loaded: resource.loaded,
        loading: resource.loading,
        user: resource.data,
        error: resource.error,
      ),
    );
  }

  void _fetchUser(_FetchUserEvent event, emit) async {
    store.dispatch(
      fetchResourceThunk(store,
          request: fetchUserRequest.copyWith(
            data: event.userId,
          )),
    );
  }

  void _clearError(_ClearErrorEvent event, emit) async {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(
          name: fetchUserRequest.resourceName,
          error: '',
          loaded: false,
        ),
      ),
    );
  }

  void _deleteResource(_DeleteResourceEvent event, emit) {
    store.dispatch(
      ResourcesAction.deleteResource(
        resourceName: fetchUserRequest.resourceName,
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: ResourceModel(name: fetchUserRequest.resourceName),
      ),
    );
  }
}
