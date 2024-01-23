// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_editor_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditorPageState {
  String get id => throw _privateConstructorUsedError;
  bool get loaded => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  TaskModel? get task => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEditorPageStateCopyWith<TaskEditorPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditorPageStateCopyWith<$Res> {
  factory $TaskEditorPageStateCopyWith(
          TaskEditorPageState value, $Res Function(TaskEditorPageState) then) =
      _$TaskEditorPageStateCopyWithImpl<$Res, TaskEditorPageState>;
  @useResult
  $Res call(
      {String id, bool loaded, bool loading, TaskModel? task, String error});

  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class _$TaskEditorPageStateCopyWithImpl<$Res, $Val extends TaskEditorPageState>
    implements $TaskEditorPageStateCopyWith<$Res> {
  _$TaskEditorPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loaded = null,
    Object? loading = null,
    Object? task = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_TaskEditorPageStateCopyWith<$Res>
    implements $TaskEditorPageStateCopyWith<$Res> {
  factory _$$_TaskEditorPageStateCopyWith(_$_TaskEditorPageState value,
          $Res Function(_$_TaskEditorPageState) then) =
      __$$_TaskEditorPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, bool loaded, bool loading, TaskModel? task, String error});

  @override
  $TaskModelCopyWith<$Res>? get task;
}

/// @nodoc
class __$$_TaskEditorPageStateCopyWithImpl<$Res>
    extends _$TaskEditorPageStateCopyWithImpl<$Res, _$_TaskEditorPageState>
    implements _$$_TaskEditorPageStateCopyWith<$Res> {
  __$$_TaskEditorPageStateCopyWithImpl(_$_TaskEditorPageState _value,
      $Res Function(_$_TaskEditorPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loaded = null,
    Object? loading = null,
    Object? task = freezed,
    Object? error = null,
  }) {
    return _then(_$_TaskEditorPageState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      loaded: null == loaded
          ? _value.loaded
          : loaded // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TaskEditorPageState implements _TaskEditorPageState {
  const _$_TaskEditorPageState(
      {this.id = '',
      this.loaded = false,
      this.loading = false,
      this.task,
      this.error = ''});

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final bool loaded;
  @override
  @JsonKey()
  final bool loading;
  @override
  final TaskModel? task;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'TaskEditorPageState(id: $id, loaded: $loaded, loading: $loading, task: $task, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskEditorPageState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loaded, loaded) || other.loaded == loaded) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, loaded, loading, task, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskEditorPageStateCopyWith<_$_TaskEditorPageState> get copyWith =>
      __$$_TaskEditorPageStateCopyWithImpl<_$_TaskEditorPageState>(
          this, _$identity);
}

abstract class _TaskEditorPageState implements TaskEditorPageState {
  const factory _TaskEditorPageState(
      {final String id,
      final bool loaded,
      final bool loading,
      final TaskModel? task,
      final String error}) = _$_TaskEditorPageState;

  @override
  String get id;
  @override
  bool get loaded;
  @override
  bool get loading;
  @override
  TaskModel? get task;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_TaskEditorPageStateCopyWith<_$_TaskEditorPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
