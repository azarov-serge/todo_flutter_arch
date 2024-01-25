// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResourceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(dynamic data) fetch,
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(dynamic data)? fetch,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(dynamic data)? fetch,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchDataEvent value) fetch,
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchDataEvent value)? fetch,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchDataEvent value)? fetch,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceEventCopyWith<$Res> {
  factory $ResourceEventCopyWith(
          ResourceEvent value, $Res Function(ResourceEvent) then) =
      _$ResourceEventCopyWithImpl<$Res, ResourceEvent>;
}

/// @nodoc
class _$ResourceEventCopyWithImpl<$Res, $Val extends ResourceEvent>
    implements $ResourceEventCopyWith<$Res> {
  _$ResourceEventCopyWithImpl(this._value, this._then);

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
    extends _$ResourceEventCopyWithImpl<$Res, _$_ChangeStateEvent>
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
    return 'ResourceEvent.changeState(appState: $appState)';
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
    required TResult Function(dynamic data) fetch,
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
    TResult? Function(dynamic data)? fetch,
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
    TResult Function(dynamic data)? fetch,
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
    required TResult Function(_FetchDataEvent value) fetch,
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
    TResult? Function(_FetchDataEvent value)? fetch,
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
    TResult Function(_FetchDataEvent value)? fetch,
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

abstract class _ChangeStateEvent implements ResourceEvent {
  const factory _ChangeStateEvent({required final AppState appState}) =
      _$_ChangeStateEvent;

  AppState get appState;
  @JsonKey(ignore: true)
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchDataEventCopyWith<$Res> {
  factory _$$_FetchDataEventCopyWith(
          _$_FetchDataEvent value, $Res Function(_$_FetchDataEvent) then) =
      __$$_FetchDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_FetchDataEventCopyWithImpl<$Res>
    extends _$ResourceEventCopyWithImpl<$Res, _$_FetchDataEvent>
    implements _$$_FetchDataEventCopyWith<$Res> {
  __$$_FetchDataEventCopyWithImpl(
      _$_FetchDataEvent _value, $Res Function(_$_FetchDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_FetchDataEvent(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_FetchDataEvent implements _FetchDataEvent {
  const _$_FetchDataEvent(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'ResourceEvent.fetch(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchDataEvent &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchDataEventCopyWith<_$_FetchDataEvent> get copyWith =>
      __$$_FetchDataEventCopyWithImpl<_$_FetchDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(dynamic data) fetch,
    required TResult Function() clearError,
    required TResult Function() deleteResource,
    required TResult Function() clear,
  }) {
    return fetch(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(dynamic data)? fetch,
    TResult? Function()? clearError,
    TResult? Function()? deleteResource,
    TResult? Function()? clear,
  }) {
    return fetch?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(dynamic data)? fetch,
    TResult Function()? clearError,
    TResult Function()? deleteResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchDataEvent value) fetch,
    required TResult Function(_ClearErrorEvent value) clearError,
    required TResult Function(_DeleteResourceEvent value) deleteResource,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchDataEvent value)? fetch,
    TResult? Function(_ClearErrorEvent value)? clearError,
    TResult? Function(_DeleteResourceEvent value)? deleteResource,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchDataEvent value)? fetch,
    TResult Function(_ClearErrorEvent value)? clearError,
    TResult Function(_DeleteResourceEvent value)? deleteResource,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchDataEvent implements ResourceEvent {
  const factory _FetchDataEvent(final dynamic data) = _$_FetchDataEvent;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_FetchDataEventCopyWith<_$_FetchDataEvent> get copyWith =>
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
    extends _$ResourceEventCopyWithImpl<$Res, _$_ClearErrorEvent>
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
    return 'ResourceEvent.clearError()';
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
    required TResult Function(dynamic data) fetch,
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
    TResult? Function(dynamic data)? fetch,
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
    TResult Function(dynamic data)? fetch,
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
    required TResult Function(_FetchDataEvent value) fetch,
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
    TResult? Function(_FetchDataEvent value)? fetch,
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
    TResult Function(_FetchDataEvent value)? fetch,
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

abstract class _ClearErrorEvent implements ResourceEvent {
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
    extends _$ResourceEventCopyWithImpl<$Res, _$_DeleteResourceEvent>
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
    return 'ResourceEvent.deleteResource()';
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
    required TResult Function(dynamic data) fetch,
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
    TResult? Function(dynamic data)? fetch,
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
    TResult Function(dynamic data)? fetch,
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
    required TResult Function(_FetchDataEvent value) fetch,
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
    TResult? Function(_FetchDataEvent value)? fetch,
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
    TResult Function(_FetchDataEvent value)? fetch,
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

abstract class _DeleteResourceEvent implements ResourceEvent {
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
    extends _$ResourceEventCopyWithImpl<$Res, _$_ClearEvent>
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
    return 'ResourceEvent.clear()';
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
    required TResult Function(dynamic data) fetch,
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
    TResult? Function(dynamic data)? fetch,
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
    TResult Function(dynamic data)? fetch,
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
    required TResult Function(_FetchDataEvent value) fetch,
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
    TResult? Function(_FetchDataEvent value)? fetch,
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
    TResult Function(_FetchDataEvent value)? fetch,
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

abstract class _ClearEvent implements ResourceEvent {
  const factory _ClearEvent() = _$_ClearEvent;
}
