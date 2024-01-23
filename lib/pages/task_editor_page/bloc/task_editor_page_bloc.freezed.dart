// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_editor_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditorPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String id) init,
    required TResult Function(TaskModel task) changeTask,
    required TResult Function(TaskModel task) submit,
    required TResult Function() clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String id)? init,
    TResult? Function(TaskModel task)? changeTask,
    TResult? Function(TaskModel task)? submit,
    TResult? Function()? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String id)? init,
    TResult Function(TaskModel task)? changeTask,
    TResult Function(TaskModel task)? submit,
    TResult Function()? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ChangeTaskEvent value) changeTask,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ChangeTaskEvent value)? changeTask,
    TResult? Function(_SubmitEvent value)? submit,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_InitEvent value)? init,
    TResult Function(_ChangeTaskEvent value)? changeTask,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditorPageEventCopyWith<$Res> {
  factory $TaskEditorPageEventCopyWith(
          TaskEditorPageEvent value, $Res Function(TaskEditorPageEvent) then) =
      _$TaskEditorPageEventCopyWithImpl<$Res, TaskEditorPageEvent>;
}

/// @nodoc
class _$TaskEditorPageEventCopyWithImpl<$Res, $Val extends TaskEditorPageEvent>
    implements $TaskEditorPageEventCopyWith<$Res> {
  _$TaskEditorPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeStateEventCopyWith<$Res> {
  factory _$$_ChangeStateEventCopyWith(
          _$_ChangeStateEvent value, $Res Function(_$_ChangeStateEvent) then) =
      __$$_ChangeStateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppState appState});

  $AppStateCopyWith<$Res> get appState;
}

/// @nodoc
class __$$_ChangeStateEventCopyWithImpl<$Res>
    extends _$TaskEditorPageEventCopyWithImpl<$Res, _$_ChangeStateEvent>
    implements _$$_ChangeStateEventCopyWith<$Res> {
  __$$_ChangeStateEventCopyWithImpl(
      _$_ChangeStateEvent _value, $Res Function(_$_ChangeStateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appState = null,
  }) {
    return _then(_$_ChangeStateEvent(
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppStateCopyWith<$Res> get appState {
    return $AppStateCopyWith<$Res>(_value.appState, (value) {
      return _then(_value.copyWith(appState: value));
    });
  }
}

/// @nodoc

class _$_ChangeStateEvent implements _ChangeStateEvent {
  const _$_ChangeStateEvent({required this.appState});

  @override
  final AppState appState;

  @override
  String toString() {
    return 'TaskEditorPageEvent.changeState(appState: $appState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeStateEvent &&
            (identical(other.appState, appState) ||
                other.appState == appState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      __$$_ChangeStateEventCopyWithImpl<_$_ChangeStateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String id) init,
    required TResult Function(TaskModel task) changeTask,
    required TResult Function(TaskModel task) submit,
    required TResult Function() clearError,
  }) {
    return changeState(appState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String id)? init,
    TResult? Function(TaskModel task)? changeTask,
    TResult? Function(TaskModel task)? submit,
    TResult? Function()? clearError,
  }) {
    return changeState?.call(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String id)? init,
    TResult Function(TaskModel task)? changeTask,
    TResult Function(TaskModel task)? submit,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(appState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ChangeTaskEvent value) changeTask,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return changeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ChangeTaskEvent value)? changeTask,
    TResult? Function(_SubmitEvent value)? submit,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return changeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_InitEvent value)? init,
    TResult Function(_ChangeTaskEvent value)? changeTask,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (changeState != null) {
      return changeState(this);
    }
    return orElse();
  }
}

abstract class _ChangeStateEvent implements TaskEditorPageEvent {
  const factory _ChangeStateEvent({required final AppState appState}) =
      _$_ChangeStateEvent;

  AppState get appState;
  @JsonKey(ignore: true)
  _$$_ChangeStateEventCopyWith<_$_ChangeStateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitEventCopyWith<$Res> {
  factory _$$_InitEventCopyWith(
          _$_InitEvent value, $Res Function(_$_InitEvent) then) =
      __$$_InitEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_InitEventCopyWithImpl<$Res>
    extends _$TaskEditorPageEventCopyWithImpl<$Res, _$_InitEvent>
    implements _$$_InitEventCopyWith<$Res> {
  __$$_InitEventCopyWithImpl(
      _$_InitEvent _value, $Res Function(_$_InitEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_InitEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitEvent implements _InitEvent {
  const _$_InitEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TaskEditorPageEvent.init(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitEventCopyWith<_$_InitEvent> get copyWith =>
      __$$_InitEventCopyWithImpl<_$_InitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String id) init,
    required TResult Function(TaskModel task) changeTask,
    required TResult Function(TaskModel task) submit,
    required TResult Function() clearError,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String id)? init,
    TResult? Function(TaskModel task)? changeTask,
    TResult? Function(TaskModel task)? submit,
    TResult? Function()? clearError,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String id)? init,
    TResult Function(TaskModel task)? changeTask,
    TResult Function(TaskModel task)? submit,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ChangeTaskEvent value) changeTask,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ChangeTaskEvent value)? changeTask,
    TResult? Function(_SubmitEvent value)? submit,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_InitEvent value)? init,
    TResult Function(_ChangeTaskEvent value)? changeTask,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements TaskEditorPageEvent {
  const factory _InitEvent(final String id) = _$_InitEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_InitEventCopyWith<_$_InitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTaskEventCopyWith<$Res> {
  factory _$$_ChangeTaskEventCopyWith(
          _$_ChangeTaskEvent value, $Res Function(_$_ChangeTaskEvent) then) =
      __$$_ChangeTaskEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$_ChangeTaskEventCopyWithImpl<$Res>
    extends _$TaskEditorPageEventCopyWithImpl<$Res, _$_ChangeTaskEvent>
    implements _$$_ChangeTaskEventCopyWith<$Res> {
  __$$_ChangeTaskEventCopyWithImpl(
      _$_ChangeTaskEvent _value, $Res Function(_$_ChangeTaskEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_ChangeTaskEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_ChangeTaskEvent implements _ChangeTaskEvent {
  const _$_ChangeTaskEvent(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskEditorPageEvent.changeTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTaskEvent &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTaskEventCopyWith<_$_ChangeTaskEvent> get copyWith =>
      __$$_ChangeTaskEventCopyWithImpl<_$_ChangeTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String id) init,
    required TResult Function(TaskModel task) changeTask,
    required TResult Function(TaskModel task) submit,
    required TResult Function() clearError,
  }) {
    return changeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String id)? init,
    TResult? Function(TaskModel task)? changeTask,
    TResult? Function(TaskModel task)? submit,
    TResult? Function()? clearError,
  }) {
    return changeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String id)? init,
    TResult Function(TaskModel task)? changeTask,
    TResult Function(TaskModel task)? submit,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (changeTask != null) {
      return changeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ChangeTaskEvent value) changeTask,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return changeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ChangeTaskEvent value)? changeTask,
    TResult? Function(_SubmitEvent value)? submit,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return changeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_InitEvent value)? init,
    TResult Function(_ChangeTaskEvent value)? changeTask,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (changeTask != null) {
      return changeTask(this);
    }
    return orElse();
  }
}

abstract class _ChangeTaskEvent implements TaskEditorPageEvent {
  const factory _ChangeTaskEvent(final TaskModel task) = _$_ChangeTaskEvent;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_ChangeTaskEventCopyWith<_$_ChangeTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitEventCopyWith<$Res> {
  factory _$$_SubmitEventCopyWith(
          _$_SubmitEvent value, $Res Function(_$_SubmitEvent) then) =
      __$$_SubmitEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$_SubmitEventCopyWithImpl<$Res>
    extends _$TaskEditorPageEventCopyWithImpl<$Res, _$_SubmitEvent>
    implements _$$_SubmitEventCopyWith<$Res> {
  __$$_SubmitEventCopyWithImpl(
      _$_SubmitEvent _value, $Res Function(_$_SubmitEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_SubmitEvent(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_SubmitEvent implements _SubmitEvent {
  const _$_SubmitEvent(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskEditorPageEvent.submit(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitEvent &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitEventCopyWith<_$_SubmitEvent> get copyWith =>
      __$$_SubmitEventCopyWithImpl<_$_SubmitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String id) init,
    required TResult Function(TaskModel task) changeTask,
    required TResult Function(TaskModel task) submit,
    required TResult Function() clearError,
  }) {
    return submit(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String id)? init,
    TResult? Function(TaskModel task)? changeTask,
    TResult? Function(TaskModel task)? submit,
    TResult? Function()? clearError,
  }) {
    return submit?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String id)? init,
    TResult Function(TaskModel task)? changeTask,
    TResult Function(TaskModel task)? submit,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ChangeTaskEvent value) changeTask,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ChangeTaskEvent value)? changeTask,
    TResult? Function(_SubmitEvent value)? submit,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_InitEvent value)? init,
    TResult Function(_ChangeTaskEvent value)? changeTask,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _SubmitEvent implements TaskEditorPageEvent {
  const factory _SubmitEvent(final TaskModel task) = _$_SubmitEvent;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_SubmitEventCopyWith<_$_SubmitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearErrorEventCopyWith<$Res> {
  factory _$$_ClearErrorEventCopyWith(
          _$_ClearErrorEvent value, $Res Function(_$_ClearErrorEvent) then) =
      __$$_ClearErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearErrorEventCopyWithImpl<$Res>
    extends _$TaskEditorPageEventCopyWithImpl<$Res, _$_ClearErrorEvent>
    implements _$$_ClearErrorEventCopyWith<$Res> {
  __$$_ClearErrorEventCopyWithImpl(
      _$_ClearErrorEvent _value, $Res Function(_$_ClearErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClearErrorEvent implements _ClearErrorEvent {
  const _$_ClearErrorEvent();

  @override
  String toString() {
    return 'TaskEditorPageEvent.clearError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppState appState) changeState,
    required TResult Function(String id) init,
    required TResult Function(TaskModel task) changeTask,
    required TResult Function(TaskModel task) submit,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppState appState)? changeState,
    TResult? Function(String id)? init,
    TResult? Function(TaskModel task)? changeTask,
    TResult? Function(TaskModel task)? submit,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppState appState)? changeState,
    TResult Function(String id)? init,
    TResult Function(TaskModel task)? changeTask,
    TResult Function(TaskModel task)? submit,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStateEvent value) changeState,
    required TResult Function(_InitEvent value) init,
    required TResult Function(_ChangeTaskEvent value) changeTask,
    required TResult Function(_SubmitEvent value) submit,
    required TResult Function(_ClearErrorEvent value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStateEvent value)? changeState,
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_ChangeTaskEvent value)? changeTask,
    TResult? Function(_SubmitEvent value)? submit,
    TResult? Function(_ClearErrorEvent value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStateEvent value)? changeState,
    TResult Function(_InitEvent value)? init,
    TResult Function(_ChangeTaskEvent value)? changeTask,
    TResult Function(_SubmitEvent value)? submit,
    TResult Function(_ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class _ClearErrorEvent implements TaskEditorPageEvent {
  const factory _ClearErrorEvent() = _$_ClearErrorEvent;
}
