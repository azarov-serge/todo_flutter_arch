// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskCreateState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  TaskModel? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCreateStateCopyWith<TaskCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateStateCopyWith<$Res> {
  factory $TaskCreateStateCopyWith(
          TaskCreateState value, $Res Function(TaskCreateState) then) =
      _$TaskCreateStateCopyWithImpl<$Res, TaskCreateState>;
  @useResult
  $Res call({bool loading, bool loaded, String error, TaskModel? task});

  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class _$TaskCreateStateCopyWithImpl<$Res, $Val extends TaskCreateState>
    implements $TaskCreateStateCopyWith<$Res> {
  _$TaskCreateStateCopyWithImpl(this._value, this._then);

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
    Object? task = freezed,
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
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskModelCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskCreateStateCopyWith<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  factory _$$_TaskCreateStateCopyWith(
          _$_TaskCreateState value, $Res Function(_$_TaskCreateState) then) =
      __$$_TaskCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool loaded, String error, TaskModel? task});

  @override
  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class __$$_TaskCreateStateCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$_TaskCreateState>
    implements _$$_TaskCreateStateCopyWith<$Res> {
  __$$_TaskCreateStateCopyWithImpl(
      _$_TaskCreateState _value, $Res Function(_$_TaskCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
    Object? task = freezed,
  }) {
    return _then(_$_TaskCreateState(
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
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ));
  }
}

/// @nodoc

class _$_TaskCreateState implements _TaskCreateState {
  const _$_TaskCreateState(
      {this.loading = false, this.loaded = false, this.error = '', this.task});

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
  final TaskModel? task;

  @override
  String toString() {
    return 'TaskCreateState(loading: $loading, loaded: $loaded, error: $error, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskCreateState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, loaded, error, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCreateStateCopyWith<_$_TaskCreateState> get copyWith =>
      __$$_TaskCreateStateCopyWithImpl<_$_TaskCreateState>(this, _$identity);
}

abstract class _TaskCreateState implements TaskCreateState {
  const factory _TaskCreateState(
      {final bool loading,
      final bool loaded,
      final String error,
      final TaskModel? task}) = _$_TaskCreateState;

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  String get error;
  @override
  TaskModel? get task;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCreateStateCopyWith<_$_TaskCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
