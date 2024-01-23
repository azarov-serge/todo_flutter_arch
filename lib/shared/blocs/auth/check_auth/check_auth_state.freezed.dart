// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckAuthState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckAuthStateCopyWith<CheckAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAuthStateCopyWith<$Res> {
  factory $CheckAuthStateCopyWith(
          CheckAuthState value, $Res Function(CheckAuthState) then) =
      _$CheckAuthStateCopyWithImpl<$Res, CheckAuthState>;
  @useResult
  $Res call({bool loading, bool loaded, String error, String userId});
}

/// @nodoc
class _$CheckAuthStateCopyWithImpl<$Res, $Val extends CheckAuthState>
    implements $CheckAuthStateCopyWith<$Res> {
  _$CheckAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckAuthStateCopyWith<$Res>
    implements $CheckAuthStateCopyWith<$Res> {
  factory _$$_CheckAuthStateCopyWith(
          _$_CheckAuthState value, $Res Function(_$_CheckAuthState) then) =
      __$$_CheckAuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool loaded, String error, String userId});
}

/// @nodoc
class __$$_CheckAuthStateCopyWithImpl<$Res>
    extends _$CheckAuthStateCopyWithImpl<$Res, _$_CheckAuthState>
    implements _$$_CheckAuthStateCopyWith<$Res> {
  __$$_CheckAuthStateCopyWithImpl(
      _$_CheckAuthState _value, $Res Function(_$_CheckAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
    Object? userId = null,
  }) {
    return _then(_$_CheckAuthState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckAuthState implements _CheckAuthState {
  const _$_CheckAuthState(
      {this.loading = false,
      this.loaded = false,
      this.error = '',
      this.userId = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool loaded;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String userId;

  @override
  String toString() {
    return 'CheckAuthState(loading: $loading, loaded: $loaded, error: $error, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckAuthState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, loaded, error, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckAuthStateCopyWith<_$_CheckAuthState> get copyWith =>
      __$$_CheckAuthStateCopyWithImpl<_$_CheckAuthState>(this, _$identity);
}

abstract class _CheckAuthState implements CheckAuthState {
  const factory _CheckAuthState(
      {final bool loading,
      final bool loaded,
      final String error,
      final String userId}) = _$_CheckAuthState;

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  String get error;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_CheckAuthStateCopyWith<_$_CheckAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
