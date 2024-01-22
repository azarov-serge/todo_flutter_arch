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

import 'user_state.dart';

part 'user_block.freezed.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final Store<AppState> store;
  late final StreamSubscription<AppState> _storeListener;

  factory UserBloc.create() => UserBloc(
        store: getIt.get(),
      );

  UserBloc({required this.store}) : super(const UserState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_FetchUserEvent>(_fetchUser);
    on<_ClearFetchUserErrorEvent>(_clearFetchUserError);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(UserEvent.changeState(appState: appState));
    });

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        fetchUserResource: ResourceModel(name: fetchUserRequest.resourceName),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final fetchUserResource =
        getResource(event.appState, request: fetchUserRequest) ??
            state.fetchUserResource;

    emit(state.copyWith(
      fetchUserResource: fetchUserResource,
      user: fetchUserResource.data,
    ));
  }

  void _fetchUser(_FetchUserEvent event, emit) async {
    store.dispatch(
      fetchResourceThunk(store,
          request: fetchUserRequest.copyWith(
            data: event.userId,
          )),
    );
  }

  void _clearFetchUserError(_ClearFetchUserErrorEvent event, emit) async {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.fetchUserResource.copyWith(error: ''),
      ),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.fetchUserResource.createEmpty(),
      ),
    );
  }
}
