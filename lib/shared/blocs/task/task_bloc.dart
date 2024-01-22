import 'dart:async';

// ignore: depend_on_referenced_packages, unused_import
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:bloc/bloc.dart';

import 'package:todo/application/store/app_state.dart';
import 'package:todo/application/store/resources/resources.dart';
import 'package:todo/models/models.dart';

import 'package:todo/shared/di/di.dart';
import 'package:todo/shared/services/models/models.dart';
import 'package:todo/shared/services/requests.dart';

import '../user/user_block.dart';
import 'task_state.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final Store<AppState> store;
  late final StreamSubscription<AppState> _storeListener;
  final UserBloc userBloc = getIt();

  factory TaskBloc.create() => TaskBloc(
        store: getIt.get(),
      );

  TaskBloc({required this.store}) : super(const TaskState()) {
    on<_ChangeStateEvent>(_changeState);

    on<_FetchListEvent>(_fetchList);

    on<_CreateItemEvent>(_createItem);
    on<_UpdateItemEvent>(_updateItem);
    on<_DeleteItemEvent>(_deleteItem);

    on<_RemoveResourceEvent>(_removeResource);

    on<_ClearResourceErrorEvent>(_clearResourceError);

    on<_ClearEvent>(_clear);

    _storeListener = store.onChange.listen((appState) {
      add(TaskEvent.changeState(appState: appState));
    });

    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      state.copyWith(
        getListResource: ResourceModel(name: taskGetListRequest.resourceName),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _storeListener.cancel();
    return super.close();
  }

  void _changeState(_ChangeStateEvent event, emit) {
    final getListResource =
        getResource(event.appState, request: taskGetListRequest) ??
            state.getListResource;

    emit(state.copyWith(
      getListResource: getListResource,
    ));
  }

  void _fetchList(_FetchListEvent event, emit) async {
    store.dispatch(
      fetchResourceThunk(store,
          request: taskGetListRequest.copyWith(
            data: event.userId,
          )),
    );
  }

  void _createItem(_CreateItemEvent event, emit) {
    final UserModel? user = userBloc.state.fetchUserResource.data;

    if (user == null) {
      return;
    }

    final request = taskCreateRequest.copyWith(id: event.id);

    store.dispatch(
      fetchResourceThunk(
        store,
        request: request.copyWith(
          data: {
            'task': event.task,
            'userId': user.id,
          },
        ),
      ),
    );
  }

  void _updateItem(_UpdateItemEvent event, emit) {
    final request = taskUpdateRequest.copyWith(id: event.task.id);

    store.dispatch(
      fetchResourceThunk(
        store,
        request: request.copyWith(
          data: event.task,
        ),
      ),
    );
  }

  void _deleteItem(_DeleteItemEvent event, emit) {
    final UserModel? user = userBloc.state.fetchUserResource.data;

    if (user == null) {
      return;
    }

    final request = taskDeleteRequest.copyWith(id: event.id);

    store.dispatch(
      fetchResourceThunk(
        store,
        request: request.copyWith(
          data: event.id,
        ),
      ),
    );
  }

  void _removeResource(_RemoveResourceEvent event, emit) {
    store.dispatch(
      ResourcesAction.removeResource(resourceName: event.resourceName),
    );
  }

  void _clearResourceError(_ClearResourceErrorEvent event, emit) {
    final resource = getResource(store.state, request: event.request);

    if (resource == null) {
      return;
    }

    store.dispatch(
      ResourcesAction.updateResource(resource: resource.copyWith(error: '')),
    );
  }

  void _clear(_ClearEvent event, emit) {
    store.dispatch(
      ResourcesAction.updateResource(
        resource: state.getListResource.createEmpty(),
      ),
    );
  }
}
