// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpPageState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpPageStateCopyWith<SignUpPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpPageStateCopyWith<$Res> {
  factory $SignUpPageStateCopyWith(
          SignUpPageState value, $Res Function(SignUpPageState) then) =
      _$SignUpPageStateCopyWithImpl<$Res, SignUpPageState>;
  @useResult
  $Res call({bool loading, String error});
}

/// @nodoc
class _$SignUpPageStateCopyWithImpl<$Res, $Val extends SignUpPageState>
    implements $SignUpPageStateCopyWith<$Res> {
  _$SignUpPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpPageStateCopyWith<$Res>
    implements $SignUpPageStateCopyWith<$Res> {
  factory _$$_SignUpPageStateCopyWith(
          _$_SignUpPageState value, $Res Function(_$_SignUpPageState) then) =
      __$$_SignUpPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String error});
}

/// @nodoc
class __$$_SignUpPageStateCopyWithImpl<$Res>
    extends _$SignUpPageStateCopyWithImpl<$Res, _$_SignUpPageState>
    implements _$$_SignUpPageStateCopyWith<$Res> {
  __$$_SignUpPageStateCopyWithImpl(
      _$_SignUpPageState _value, $Res Function(_$_SignUpPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_$_SignUpPageState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpPageState implements _SignUpPageState {
  const _$_SignUpPageState({this.loading = false, this.error = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'SignUpPageState(loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpPageState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpPageStateCopyWith<_$_SignUpPageState> get copyWith =>
      __$$_SignUpPageStateCopyWithImpl<_$_SignUpPageState>(this, _$identity);
}

abstract class _SignUpPageState implements SignUpPageState {
  const factory _SignUpPageState({final bool loading, final String error}) =
      _$_SignUpPageState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpPageStateCopyWith<_$_SignUpPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
