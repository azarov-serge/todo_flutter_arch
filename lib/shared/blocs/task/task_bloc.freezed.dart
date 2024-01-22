// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeStateEventCopyWith<$Res> {
  factory _$$_ChangeStateEventCopyWith(
          _$_ChangeStateEvent value, $Res Function(_$_ChangeStateEvent) then) =
      __$$_ChangeStateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppState appState});

  $AppStateCopyWith<$Res> get appState;
}

/// @nodoc
class __$$_ChangeStateEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_ChangeStateEvent>
    implements _$$_ChangeStateEventCopyWith<$Res> {
  __$$_ChangeStateEventCopyWithImpl(
      _$_ChangeStateEvent _value, $Res Function(_$_ChangeStateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appState = null,
  }) {
    return _then(_$_ChangeStateEvent(
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppStateCopyWith<$Res> get appState {
    return $AppStateCopyWith<$Res>(_value.appState, (value) {
      return _then(_value.copyWith(appState: value));
    });
  }
}

/// @nodoc

class _$_ChangeStateEvent implements _ChangeStateEvent {
  const _$_ChangeStateEvent({required this.appState});

  @override
  final AppState appState;

  @override
  String toString() {
    return 'TaskEvent.changeState(appState: $appState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeStateEvent &&
            (identical(other.appState, appState) ||
                other.appState == appState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      __$$_ChangeStateEventCopyWithImpl<_$_ChangeStateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return changeState(appState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return changeState?.call(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(appState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateEvent implements TaskEvent {
  const factory _ChangeStateEvent({required final AppState appState}) =
      _$_ChangeStateEvent;

  AppState get appState;
  @JsonKey(ignore: true)
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchListEventCopyWith<$Res> {
  factory _$$_FetchListEventCopyWith(
          _$_FetchListEvent value, $Res Function(_$_FetchListEvent) then) =
      __$$_FetchListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_FetchListEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_FetchListEvent>
    implements _$$_FetchListEventCopyWith<$Res> {
  __$$_FetchListEventCopyWithImpl(
      _$_FetchListEvent _value, $Res Function(_$_FetchListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_FetchListEvent(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchListEvent implements _FetchListEvent {
  const _$_FetchListEvent(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'TaskEvent.fetchList(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchListEvent &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchListEventCopyWith<_$_FetchListEvent> get copyWith =>
      __$$_FetchListEventCopyWithImpl<_$_FetchListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return fetchList(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return fetchList?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return fetchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return fetchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(this);
    }
    return orElse();
  }
}

abstract class _FetchListEvent implements TaskEvent {
  const factory _FetchListEvent(final String userId) = _$_FetchListEvent;

  String get userId;
  @JsonKey(ignore: true)
  _$$_FetchListEventCopyWith<_$_FetchListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateItemEventCopyWith<$Res> {
  factory _$$_CreateItemEventCopyWith(
          _$_CreateItemEvent value, $Res Function(_$_CreateItemEvent) then) =
      __$$_CreateItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task, String id});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$_CreateItemEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_CreateItemEvent>
    implements _$$_CreateItemEventCopyWith<$Res> {
  __$$_CreateItemEventCopyWithImpl(
      _$_CreateItemEvent _value, $Res Function(_$_CreateItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? id = null,
  }) {
    return _then(_$_CreateItemEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_CreateItemEvent implements _CreateItemEvent {
  const _$_CreateItemEvent(this.task, this.id);

  @override
  final TaskModel task;
  @override
  final String id;

  @override
  String toString() {
    return 'TaskEvent.createItem(task: $task, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateItemEvent &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateItemEventCopyWith<_$_CreateItemEvent> get copyWith =>
      __$$_CreateItemEventCopyWithImpl<_$_CreateItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return createItem(task, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return createItem?.call(task, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(task, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return createItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return createItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(this);
    }
    return orElse();
  }
}

abstract class _CreateItemEvent implements TaskEvent {
  const factory _CreateItemEvent(final TaskModel task, final String id) =
      _$_CreateItemEvent;

  TaskModel get task;
  String get id;
  @JsonKey(ignore: true)
  _$$_CreateItemEventCopyWith<_$_CreateItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateItemEventCopyWith<$Res> {
  factory _$$_UpdateItemEventCopyWith(
          _$_UpdateItemEvent value, $Res Function(_$_UpdateItemEvent) then) =
      __$$_UpdateItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$_UpdateItemEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_UpdateItemEvent>
    implements _$$_UpdateItemEventCopyWith<$Res> {
  __$$_UpdateItemEventCopyWithImpl(
      _$_UpdateItemEvent _value, $Res Function(_$_UpdateItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_UpdateItemEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_UpdateItemEvent implements _UpdateItemEvent {
  const _$_UpdateItemEvent(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskEvent.updateItem(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateItemEvent &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateItemEventCopyWith<_$_UpdateItemEvent> get copyWith =>
      __$$_UpdateItemEventCopyWithImpl<_$_UpdateItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return updateItem(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return updateItem?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return updateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateItemEvent implements TaskEvent {
  const factory _UpdateItemEvent(final TaskModel task) = _$_UpdateItemEvent;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_UpdateItemEventCopyWith<_$_UpdateItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteItemEventCopyWith<$Res> {
  factory _$$_DeleteItemEventCopyWith(
          _$_DeleteItemEvent value, $Res Function(_$_DeleteItemEvent) then) =
      __$$_DeleteItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteItemEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_DeleteItemEvent>
    implements _$$_DeleteItemEventCopyWith<$Res> {
  __$$_DeleteItemEventCopyWithImpl(
      _$_DeleteItemEvent _value, $Res Function(_$_DeleteItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteItemEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteItemEvent implements _DeleteItemEvent {
  const _$_DeleteItemEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TaskEvent.deleteItem(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteItemEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteItemEventCopyWith<_$_DeleteItemEvent> get copyWith =>
      __$$_DeleteItemEventCopyWithImpl<_$_DeleteItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return deleteItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return deleteItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteItemEvent implements TaskEvent {
  const factory _DeleteItemEvent(final String id) = _$_DeleteItemEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeleteItemEventCopyWith<_$_DeleteItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveResourceEventCopyWith<$Res> {
  factory _$$_RemoveResourceEventCopyWith(_$_RemoveResourceEvent value,
          $Res Function(_$_RemoveResourceEvent) then) =
      __$$_RemoveResourceEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String resourceName});
}

/// @nodoc
class __$$_RemoveResourceEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_RemoveResourceEvent>
    implements _$$_RemoveResourceEventCopyWith<$Res> {
  __$$_RemoveResourceEventCopyWithImpl(_$_RemoveResourceEvent _value,
      $Res Function(_$_RemoveResourceEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceName = null,
  }) {
    return _then(_$_RemoveResourceEvent(
      null == resourceName
          ? _value.resourceName
          : resourceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveResourceEvent implements _RemoveResourceEvent {
  const _$_RemoveResourceEvent(this.resourceName);

  @override
  final String resourceName;

  @override
  String toString() {
    return 'TaskEvent.removeResource(resourceName: $resourceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveResourceEvent &&
            (identical(other.resourceName, resourceName) ||
                other.resourceName == resourceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resourceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveResourceEventCopyWith<_$_RemoveResourceEvent> get copyWith =>
      __$$_RemoveResourceEventCopyWithImpl<_$_RemoveResourceEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return removeResource(resourceName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return removeResource?.call(resourceName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (removeResource != null) {
      return removeResource(resourceName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return removeResource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return removeResource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (removeResource != null) {
      return removeResource(this);
    }
    return orElse();
  }
}

abstract class _RemoveResourceEvent implements TaskEvent {
  const factory _RemoveResourceEvent(final String resourceName) =
      _$_RemoveResourceEvent;

  String get resourceName;
  @JsonKey(ignore: true)
  _$$_RemoveResourceEventCopyWith<_$_RemoveResourceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearResourceErrorEventCopyWith<$Res> {
  factory _$$_ClearResourceErrorEventCopyWith(_$_ClearResourceErrorEvent value,
          $Res Function(_$_ClearResourceErrorEvent) then) =
      __$$_ClearResourceErrorEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestModel request});

  $RequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$_ClearResourceErrorEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_ClearResourceErrorEvent>
    implements _$$_ClearResourceErrorEventCopyWith<$Res> {
  __$$_ClearResourceErrorEventCopyWithImpl(_$_ClearResourceErrorEvent _value,
      $Res Function(_$_ClearResourceErrorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_ClearResourceErrorEvent(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestModelCopyWith<$Res> get request {
    return $RequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$_ClearResourceErrorEvent implements _ClearResourceErrorEvent {
  const _$_ClearResourceErrorEvent(this.request);

  @override
  final RequestModel request;

  @override
  String toString() {
    return 'TaskEvent.clearResourceError(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearResourceErrorEvent &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClearResourceErrorEventCopyWith<_$_ClearResourceErrorEvent>
      get copyWith =>
          __$$_ClearResourceErrorEventCopyWithImpl<_$_ClearResourceErrorEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return clearResourceError(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return clearResourceError?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clearResourceError != null) {
      return clearResourceError(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clearResourceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clearResourceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clearResourceError != null) {
      return clearResourceError(this);
    }
    return orElse();
  }
}

abstract class _ClearResourceErrorEvent implements TaskEvent {
  const factory _ClearResourceErrorEvent(final RequestModel request) =
      _$_ClearResourceErrorEvent;

  RequestModel get request;
  @JsonKey(ignore: true)
  _$$_ClearResourceErrorEventCopyWith<_$_ClearResourceErrorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearEventCopyWith<$Res> {
  factory _$$_ClearEventCopyWith(
          _$_ClearEvent value, $Res Function(_$_ClearEvent) then) =
      __$$_ClearEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearEventCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_ClearEvent>
    implements _$$_ClearEventCopyWith<$Res> {
  __$$_ClearEventCopyWithImpl(
      _$_ClearEvent _value, $Res Function(_$_ClearEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearEvent implements _ClearEvent {
  const _$_ClearEvent();

  @override
  String toString() {
    return 'TaskEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function(TaskModel task, String id) createItem,
    required TResult Function(TaskModel task) updateItem,
    required TResult Function(String id) deleteItem,
    required TResult Function(String resourceName) removeResource,
    required TResult Function(RequestModel request) clearResourceError,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function(TaskModel task, String id)? createItem,
    TResult? Function(TaskModel task)? updateItem,
    TResult? Function(String id)? deleteItem,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function(RequestModel request)? clearResourceError,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function(TaskModel task, String id)? createItem,
    TResult Function(TaskModel task)? updateItem,
    TResult Function(String id)? deleteItem,
    TResult Function(String resourceName)? removeResource,
    TResult Function(RequestModel request)? clearResourceError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_CreateItemEvent value) createItem,
    required TResult Function(_UpdateItemEvent value) updateItem,
    required TResult Function(_DeleteItemEvent value) deleteItem,
    required TResult Function(_RemoveResourceEvent value) removeResource,
    required TResult Function(_ClearResourceErrorEvent value)
        clearResourceError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_CreateItemEvent value)? createItem,
    TResult? Function(_UpdateItemEvent value)? updateItem,
    TResult? Function(_DeleteItemEvent value)? deleteItem,
    TResult? Function(_RemoveResourceEvent value)? removeResource,
    TResult? Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_CreateItemEvent value)? createItem,
    TResult Function(_UpdateItemEvent value)? updateItem,
    TResult Function(_DeleteItemEvent value)? deleteItem,
    TResult Function(_RemoveResourceEvent value)? removeResource,
    TResult Function(_ClearResourceErrorEvent value)? clearResourceError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearEvent implements TaskEvent {
  const factory _ClearEvent() = _$_ClearEvent;
}
