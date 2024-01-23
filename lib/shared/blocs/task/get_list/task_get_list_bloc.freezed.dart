// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_get_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskGetListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskGetListEventCopyWith<$Res> {
  factory $TaskGetListEventCopyWith(
          TaskGetListEvent value, $Res Function(TaskGetListEvent) then) =
      _$TaskGetListEventCopyWithImpl<$Res, TaskGetListEvent>;
}

/// @nodoc
class _$TaskGetListEventCopyWithImpl<$Res, $Val extends TaskGetListEvent>
    implements $TaskGetListEventCopyWith<$Res> {
  _$TaskGetListEventCopyWithImpl(this._value, this._then);

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
    extends _$TaskGetListEventCopyWithImpl<$Res, _$_ChangeStateEvent>
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
    return 'TaskGetListEvent.changeState(appState: $appState)';
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
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) {
    return changeState(appState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) {
    return changeState?.call(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
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
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateEvent implements TaskGetListEvent {
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
    extends _$TaskGetListEventCopyWithImpl<$Res, _$_FetchListEvent>
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
    return 'TaskGetListEvent.fetchList(userId: $userId)';
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
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) {
    return fetchList(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) {
    return fetchList?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
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
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return fetchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return fetchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(this);
    }
    return orElse();
  }
}

abstract class _FetchListEvent implements TaskGetListEvent {
  const factory _FetchListEvent(final String userId) = _$_FetchListEvent;

  String get userId;
  @JsonKey(ignore: true)
  _$$_FetchListEventCopyWith<_$_FetchListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearErrorEventCopyWith<$Res> {
  factory _$$_ClearErrorEventCopyWith(
          _$_ClearErrorEvent value, $Res Function(_$_ClearErrorEvent) then) =
      __$$_ClearErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearErrorEventCopyWithImpl<$Res>
    extends _$TaskGetListEventCopyWithImpl<$Res, _$_ClearErrorEvent>
    implements _$$_ClearErrorEventCopyWith<$Res> {
  __$$_ClearErrorEventCopyWithImpl(
      _$_ClearErrorEvent _value, $Res Function(_$_ClearErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearErrorEvent implements _ClearErrorEvent {
  const _$_ClearErrorEvent();

  @override
  String toString() {
    return 'TaskGetListEvent.clearError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearErrorEvent implements TaskGetListEvent {
  const factory _ClearErrorEvent() = _$_ClearErrorEvent;
}

/// @nodoc
abstract class _$$_DeleteResourceEventCopyWith<$Res> {
  factory _$$_DeleteResourceEventCopyWith(_$_DeleteResourceEvent value,
          $Res Function(_$_DeleteResourceEvent) then) =
      __$$_DeleteResourceEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteResourceEventCopyWithImpl<$Res>
    extends _$TaskGetListEventCopyWithImpl<$Res, _$_DeleteResourceEvent>
    implements _$$_DeleteResourceEventCopyWith<$Res> {
  __$$_DeleteResourceEventCopyWithImpl(_$_DeleteResourceEvent _value,
      $Res Function(_$_DeleteResourceEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteResourceEvent implements _DeleteResourceEvent {
  const _$_DeleteResourceEvent();

  @override
  String toString() {
    return 'TaskGetListEvent.deleteResource()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteResourceEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchList,
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) {
    return deleteResource();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) {
    return deleteResource?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (deleteResource != null) {
      return deleteResource();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchListEvent value) fetchList,
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return deleteResource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return deleteResource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (deleteResource != null) {
      return deleteResource(this);
    }
    return orElse();
  }
}

abstract class _DeleteResourceEvent implements TaskGetListEvent {
  const factory _DeleteResourceEvent() = _$_DeleteResourceEvent;
}

/// @nodoc
abstract class _$$_ClearEventCopyWith<$Res> {
  factory _$$_ClearEventCopyWith(
          _$_ClearEvent value, $Res Function(_$_ClearEvent) then) =
      __$$_ClearEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearEventCopyWithImpl<$Res>
    extends _$TaskGetListEventCopyWithImpl<$Res, _$_ClearEvent>
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
    return 'TaskGetListEvent.clear()';
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
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchList,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchList,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
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
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchListEvent value)? fetchList,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchListEvent value)? fetchList,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearEvent implements TaskGetListEvent {
  const factory _ClearEvent() = _$_ClearEvent;
}
