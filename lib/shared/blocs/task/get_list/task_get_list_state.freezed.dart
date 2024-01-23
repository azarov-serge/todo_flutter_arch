// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_get_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskGetListState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskGetListStateCopyWith<TaskGetListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskGetListStateCopyWith<$Res> {
  factory $TaskGetListStateCopyWith(
          TaskGetListState value, $Res Function(TaskGetListState) then) =
      _$TaskGetListStateCopyWithImpl<$Res, TaskGetListState>;
  @useResult
  $Res call({bool loading, bool loaded, String error, List<TaskModel> tasks});
}

/// @nodoc
class _$TaskGetListStateCopyWithImpl<$Res, $Val extends TaskGetListState>
    implements $TaskGetListStateCopyWith<$Res> {
  _$TaskGetListStateCopyWithImpl(this._value, this._then);

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
    Object? tasks = null,
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
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskGetListStateCopyWith<$Res>
    implements $TaskGetListStateCopyWith<$Res> {
  factory _$$_TaskGetListStateCopyWith(
          _$_TaskGetListState value, $Res Function(_$_TaskGetListState) then) =
      __$$_TaskGetListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool loaded, String error, List<TaskModel> tasks});
}

/// @nodoc
class __$$_TaskGetListStateCopyWithImpl<$Res>
    extends _$TaskGetListStateCopyWithImpl<$Res, _$_TaskGetListState>
    implements _$$_TaskGetListStateCopyWith<$Res> {
  __$$_TaskGetListStateCopyWithImpl(
      _$_TaskGetListState _value, $Res Function(_$_TaskGetListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loaded = null,
    Object? error = null,
    Object? tasks = null,
  }) {
    return _then(_$_TaskGetListState(
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
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$_TaskGetListState implements _TaskGetListState {
  const _$_TaskGetListState(
      {this.loading = false,
      this.loaded = false,
      this.error = '',
      final List<TaskModel> tasks = const []})
      : _tasks = tasks;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool loaded;
  @override
  @JsonKey()
  final String error;
  final List<TaskModel> _tasks;
  @override
  @JsonKey()
  List<TaskModel> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskGetListState(loading: $loading, loaded: $loaded, error: $error, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskGetListState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, loaded, error,
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskGetListStateCopyWith<_$_TaskGetListState> get copyWith =>
      __$$_TaskGetListStateCopyWithImpl<_$_TaskGetListState>(this, _$identity);
}

abstract class _TaskGetListState implements TaskGetListState {
  const factory _TaskGetListState(
      {final bool loading,
      final bool loaded,
      final String error,
      final List<TaskModel> tasks}) = _$_TaskGetListState;

  @override
  bool get loading;
  @override
  bool get loaded;
  @override
  String get error;
  @override
  List<TaskModel> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_TaskGetListStateCopyWith<_$_TaskGetListState> get copyWith =>
      throw _privateConstructorUsedError;
}
