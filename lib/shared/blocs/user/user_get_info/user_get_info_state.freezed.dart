// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_get_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserGetInfoState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserGetInfoStateCopyWith<UserGetInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetInfoStateCopyWith<$Res> {
  factory $UserGetInfoStateCopyWith(
          UserGetInfoState value, $Res Function(UserGetInfoState) then) =
      _$UserGetInfoStateCopyWithImpl<$Res, UserGetInfoState>;
  @useResult
  $Res call({bool loading, bool loaded, String error, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserGetInfoStateCopyWithImpl<$Res, $Val extends UserGetInfoState>
    implements $UserGetInfoStateCopyWith<$Res> {
  _$UserGetInfoStateCopyWithImpl(this._value, this._then);

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
    Object? user = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserGetInfoStateCopyWith<$Res>
    implements $UserGetInfoStateCopyWith<$Res> {
  factory _$$_UserGetInfoStateCopyWith(
          _$_UserGetInfoState value, $Res Function(_$_UserGetInfoState) then) =
      __$$_UserGetInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool loaded, String error, UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserGetInfoStateCopyWithImpl<$Res>
    extends _$UserGetInfoStateCopyWithImpl<$Res, _$_UserGetInfoState>
    implements _$$_UserGetInfoStateCopyWith<$Res> {
  __$$_UserGetInfoStateCopyWithImpl(
      _$_UserGetInfoState _value, $Res Function(_$_UserGetInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
    Object? user = freezed,
  }) {
    return _then(_$_UserGetInfoState(
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_UserGetInfoState implements _UserGetInfoState {
  const _$_UserGetInfoState(
      {this.loading = false, this.loaded = false, this.error = '', this.user});

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
  final UserModel? user;

  @override
  String toString() {
    return 'UserGetInfoState(loading: $loading, loaded: $loaded, error: $error, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserGetInfoState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, loaded, error, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserGetInfoStateCopyWith<_$_UserGetInfoState> get copyWith =>
      __$$_UserGetInfoStateCopyWithImpl<_$_UserGetInfoState>(this, _$identity);
}

abstract class _UserGetInfoState implements UserGetInfoState {
  const factory _UserGetInfoState(
      {final bool loading,
      final bool loaded,
      final String error,
      final UserModel? user}) = _$_UserGetInfoState;

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  String get error;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserGetInfoStateCopyWith<_$_UserGetInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
