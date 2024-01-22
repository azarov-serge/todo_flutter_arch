// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksPageState {
  bool get loading => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksPageStateCopyWith<TasksPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksPageStateCopyWith<$Res> {
  factory $TasksPageStateCopyWith(
          TasksPageState value, $Res Function(TasksPageState) then) =
      _$TasksPageStateCopyWithImpl<$Res, TasksPageState>;
  @useResult
  $Res call({bool loading, List<TaskModel> tasks, String error});
}

/// @nodoc
class _$TasksPageStateCopyWithImpl<$Res, $Val extends TasksPageState>
    implements $TasksPageStateCopyWith<$Res> {
  _$TasksPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? tasks = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasksPageStateCopyWith<$Res>
    implements $TasksPageStateCopyWith<$Res> {
  factory _$$_TasksPageStateCopyWith(
          _$_TasksPageState value, $Res Function(_$_TasksPageState) then) =
      __$$_TasksPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<TaskModel> tasks, String error});
}

/// @nodoc
class __$$_TasksPageStateCopyWithImpl<$Res>
    extends _$TasksPageStateCopyWithImpl<$Res, _$_TasksPageState>
    implements _$$_TasksPageStateCopyWith<$Res> {
  __$$_TasksPageStateCopyWithImpl(
      _$_TasksPageState _value, $Res Function(_$_TasksPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? tasks = null,
    Object? error = null,
  }) {
    return _then(_$_TasksPageState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TasksPageState implements _TasksPageState {
  const _$_TasksPageState(
      {this.loading = false,
      final List<TaskModel> tasks = const [],
      this.error = ''})
      : _tasks = tasks;

  @override
  @JsonKey()
  final bool loading;
  final List<TaskModel> _tasks;
  @override
  @JsonKey()
  List<TaskModel> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'TasksPageState(loading: $loading, tasks: $tasks, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksPageState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, const DeepCollectionEquality().hash(_tasks), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksPageStateCopyWith<_$_TasksPageState> get copyWith =>
      __$$_TasksPageStateCopyWithImpl<_$_TasksPageState>(this, _$identity);
}

abstract class _TasksPageState implements TasksPageState {
  const factory _TasksPageState(
      {final bool loading,
      final List<TaskModel> tasks,
      final String error}) = _$_TasksPageState;

  @override
  bool get loading;
  @override
  List<TaskModel> get tasks;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_TasksPageStateCopyWith<_$_TasksPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
