// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_delete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskDeleteState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDeleteStateCopyWith<TaskDeleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDeleteStateCopyWith<$Res> {
  factory $TaskDeleteStateCopyWith(
          TaskDeleteState value, $Res Function(TaskDeleteState) then) =
      _$TaskDeleteStateCopyWithImpl<$Res, TaskDeleteState>;
  @useResult
  $Res call({bool loading, bool loaded, String error});
}

/// @nodoc
class _$TaskDeleteStateCopyWithImpl<$Res, $Val extends TaskDeleteState>
    implements $TaskDeleteStateCopyWith<$Res> {
  _$TaskDeleteStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_TaskDeleteStateCopyWith<$Res>
    implements $TaskDeleteStateCopyWith<$Res> {
  factory _$$_TaskDeleteStateCopyWith(
          _$_TaskDeleteState value, $Res Function(_$_TaskDeleteState) then) =
      __$$_TaskDeleteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool loaded, String error});
}

/// @nodoc
class __$$_TaskDeleteStateCopyWithImpl<$Res>
    extends _$TaskDeleteStateCopyWithImpl<$Res, _$_TaskDeleteState>
    implements _$$_TaskDeleteStateCopyWith<$Res> {
  __$$_TaskDeleteStateCopyWithImpl(
      _$_TaskDeleteState _value, $Res Function(_$_TaskDeleteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
  }) {
    return _then(_$_TaskDeleteState(
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

class _$_TaskDeleteState implements _TaskDeleteState {
  const _$_TaskDeleteState(
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
    return 'TaskDeleteState(loading: $loading, loaded: $loaded, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskDeleteState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, loaded, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskDeleteStateCopyWith<_$_TaskDeleteState> get copyWith =>
      __$$_TaskDeleteStateCopyWithImpl<_$_TaskDeleteState>(this, _$identity);
}

abstract class _TaskDeleteState implements TaskDeleteState {
  const factory _TaskDeleteState(
      {final bool loading,
      final bool loaded,
      final String error}) = _$_TaskDeleteState;

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDeleteStateCopyWith<_$_TaskDeleteState> get copyWith =>
      throw _privateConstructorUsedError;
}
