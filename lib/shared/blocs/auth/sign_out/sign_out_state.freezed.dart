// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_out_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignOutState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignOutStateCopyWith<SignOutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutStateCopyWith<$Res> {
  factory $SignOutStateCopyWith(
          SignOutState value, $Res Function(SignOutState) then) =
      _$SignOutStateCopyWithImpl<$Res, SignOutState>;
  @useResult
  $Res call({bool loading, bool loaded, String error});
}

/// @nodoc
class _$SignOutStateCopyWithImpl<$Res, $Val extends SignOutState>
    implements $SignOutStateCopyWith<$Res> {
  _$SignOutStateCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignOutStateCopyWith<$Res>
    implements $SignOutStateCopyWith<$Res> {
  factory _$$_SignOutStateCopyWith(
          _$_SignOutState value, $Res Function(_$_SignOutState) then) =
      __$$_SignOutStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool loaded, String error});
}

/// @nodoc
class __$$_SignOutStateCopyWithImpl<$Res>
    extends _$SignOutStateCopyWithImpl<$Res, _$_SignOutState>
    implements _$$_SignOutStateCopyWith<$Res> {
  __$$_SignOutStateCopyWithImpl(
      _$_SignOutState _value, $Res Function(_$_SignOutState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
  }) {
    return _then(_$_SignOutState(
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
    ));
  }
}

/// @nodoc

class _$_SignOutState implements _SignOutState {
  const _$_SignOutState(
      {this.loading = false, this.loaded = false, this.error = ''});

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
  String toString() {
    return 'SignOutState(loading: $loading, loaded: $loaded, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignOutState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, loaded, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignOutStateCopyWith<_$_SignOutState> get copyWith =>
      __$$_SignOutStateCopyWithImpl<_$_SignOutState>(this, _$identity);
}

abstract class _SignOutState implements SignOutState {
  const factory _SignOutState(
      {final bool loading,
      final bool loaded,
      final String error}) = _$_SignOutState;

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_SignOutStateCopyWith<_$_SignOutState> get copyWith =>
      throw _privateConstructorUsedError;
}
