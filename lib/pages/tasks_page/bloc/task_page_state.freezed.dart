// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskPageState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskPageStateCopyWith<TaskPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPageStateCopyWith<$Res> {
  factory $TaskPageStateCopyWith(
          TaskPageState value, $Res Function(TaskPageState) then) =
      _$TaskPageStateCopyWithImpl<$Res, TaskPageState>;
  @useResult
  $Res call({bool loading, String error});
}

/// @nodoc
class _$TaskPageStateCopyWithImpl<$Res, $Val extends TaskPageState>
    implements $TaskPageStateCopyWith<$Res> {
  _$TaskPageStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_TaskPageStateCopyWith<$Res>
    implements $TaskPageStateCopyWith<$Res> {
  factory _$$_TaskPageStateCopyWith(
          _$_TaskPageState value, $Res Function(_$_TaskPageState) then) =
      __$$_TaskPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String error});
}

/// @nodoc
class __$$_TaskPageStateCopyWithImpl<$Res>
    extends _$TaskPageStateCopyWithImpl<$Res, _$_TaskPageState>
    implements _$$_TaskPageStateCopyWith<$Res> {
  __$$_TaskPageStateCopyWithImpl(
      _$_TaskPageState _value, $Res Function(_$_TaskPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
  }) {
    return _then(_$_TaskPageState(
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

class _$_TaskPageState implements _TaskPageState {
  const _$_TaskPageState({this.loading = false, this.error = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'TaskPageState(loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskPageState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskPageStateCopyWith<_$_TaskPageState> get copyWith =>
      __$$_TaskPageStateCopyWithImpl<_$_TaskPageState>(this, _$identity);
}

abstract class _TaskPageState implements TaskPageState {
  const factory _TaskPageState({final bool loading, final String error}) =
      _$_TaskPageState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_TaskPageStateCopyWith<_$_TaskPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
