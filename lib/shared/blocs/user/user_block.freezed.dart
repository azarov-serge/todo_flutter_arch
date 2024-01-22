// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchUser,
    required TResult Function() clearFetchUserError,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchUser,
    TResult? Function()? clearFetchUserError,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchUser,
    TResult Function()? clearFetchUserError,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchUserEvent value) fetchUser,
    required TResult Function(_ClearFetchUserErrorEvent value)
        clearFetchUserError,
    required TResult Function(_ClearEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchUserEvent value)? fetchUser,
    TResult? Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult? Function(_ClearEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchUserEvent value)? fetchUser,
    TResult Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

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
    extends _$UserEventCopyWithImpl<$Res, _$_ChangeStateEvent>
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
    return 'UserEvent.changeState(appState: $appState)';
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
    required TResult Function(String userId) fetchUser,
    required TResult Function() clearFetchUserError,
    required TResult Function() clear,
  }) {
    return changeState(appState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchUser,
    TResult? Function()? clearFetchUserError,
    TResult? Function()? clear,
  }) {
    return changeState?.call(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchUser,
    TResult Function()? clearFetchUserError,
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
    required TResult Function(_FetchUserEvent value) fetchUser,
    required TResult Function(_ClearFetchUserErrorEvent value)
        clearFetchUserError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchUserEvent value)? fetchUser,
    TResult? Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchUserEvent value)? fetchUser,
    TResult Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateEvent implements UserEvent {
  const factory _ChangeStateEvent({required final AppState appState}) =
      _$_ChangeStateEvent;

  AppState get appState;
  @JsonKey(ignore: true)
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchUserEventCopyWith<$Res> {
  factory _$$_FetchUserEventCopyWith(
          _$_FetchUserEvent value, $Res Function(_$_FetchUserEvent) then) =
      __$$_FetchUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_FetchUserEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_FetchUserEvent>
    implements _$$_FetchUserEventCopyWith<$Res> {
  __$$_FetchUserEventCopyWithImpl(
      _$_FetchUserEvent _value, $Res Function(_$_FetchUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_FetchUserEvent(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchUserEvent implements _FetchUserEvent {
  const _$_FetchUserEvent(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.fetchUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchUserEvent &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchUserEventCopyWith<_$_FetchUserEvent> get copyWith =>
      __$$_FetchUserEventCopyWithImpl<_$_FetchUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchUser,
    required TResult Function() clearFetchUserError,
    required TResult Function() clear,
  }) {
    return fetchUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchUser,
    TResult? Function()? clearFetchUserError,
    TResult? Function()? clear,
  }) {
    return fetchUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchUser,
    TResult Function()? clearFetchUserError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchUserEvent value) fetchUser,
    required TResult Function(_ClearFetchUserErrorEvent value)
        clearFetchUserError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return fetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchUserEvent value)? fetchUser,
    TResult? Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return fetchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchUserEvent value)? fetchUser,
    TResult Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(this);
    }
    return orElse();
  }
}

abstract class _FetchUserEvent implements UserEvent {
  const factory _FetchUserEvent(final String userId) = _$_FetchUserEvent;

  String get userId;
  @JsonKey(ignore: true)
  _$$_FetchUserEventCopyWith<_$_FetchUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearFetchUserErrorEventCopyWith<$Res> {
  factory _$$_ClearFetchUserErrorEventCopyWith(
          _$_ClearFetchUserErrorEvent value,
          $Res Function(_$_ClearFetchUserErrorEvent) then) =
      __$$_ClearFetchUserErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearFetchUserErrorEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ClearFetchUserErrorEvent>
    implements _$$_ClearFetchUserErrorEventCopyWith<$Res> {
  __$$_ClearFetchUserErrorEventCopyWithImpl(_$_ClearFetchUserErrorEvent _value,
      $Res Function(_$_ClearFetchUserErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearFetchUserErrorEvent implements _ClearFetchUserErrorEvent {
  const _$_ClearFetchUserErrorEvent();

  @override
  String toString() {
    return 'UserEvent.clearFetchUserError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearFetchUserErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String userId) fetchUser,
    required TResult Function() clearFetchUserError,
    required TResult Function() clear,
  }) {
    return clearFetchUserError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchUser,
    TResult? Function()? clearFetchUserError,
    TResult? Function()? clear,
  }) {
    return clearFetchUserError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchUser,
    TResult Function()? clearFetchUserError,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clearFetchUserError != null) {
      return clearFetchUserError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_FetchUserEvent value) fetchUser,
    required TResult Function(_ClearFetchUserErrorEvent value)
        clearFetchUserError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clearFetchUserError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchUserEvent value)? fetchUser,
    TResult? Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clearFetchUserError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchUserEvent value)? fetchUser,
    TResult Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clearFetchUserError != null) {
      return clearFetchUserError(this);
    }
    return orElse();
  }
}

abstract class _ClearFetchUserErrorEvent implements UserEvent {
  const factory _ClearFetchUserErrorEvent() = _$_ClearFetchUserErrorEvent;
}

/// @nodoc
abstract class _$$_ClearEventCopyWith<$Res> {
  factory _$$_ClearEventCopyWith(
          _$_ClearEvent value, $Res Function(_$_ClearEvent) then) =
      __$$_ClearEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ClearEvent>
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
    return 'UserEvent.clear()';
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
    required TResult Function(String userId) fetchUser,
    required TResult Function() clearFetchUserError,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String userId)? fetchUser,
    TResult? Function()? clearFetchUserError,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String userId)? fetchUser,
    TResult Function()? clearFetchUserError,
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
    required TResult Function(_FetchUserEvent value) fetchUser,
    required TResult Function(_ClearFetchUserErrorEvent value)
        clearFetchUserError,
    required TResult Function(_ClearEvent value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_FetchUserEvent value)? fetchUser,
    TResult? Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult? Function(_ClearEvent value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_FetchUserEvent value)? fetchUser,
    TResult Function(_ClearFetchUserErrorEvent value)? clearFetchUserError,
    TResult Function(_ClearEvent value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _ClearEvent implements UserEvent {
  const factory _ClearEvent() = _$_ClearEvent;
}
