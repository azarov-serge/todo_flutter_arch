// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resources_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResourcesAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResourceModel resource) updateResource,
    required TResult Function(String resourceName) removeResource,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResourceModel resource)? updateResource,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResourceModel resource)? updateResource,
    TResult Function(String resourceName)? removeResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateResource value) updateResource,
    required TResult Function(_RemoveResource value) removeResource,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateResource value)? updateResource,
    TResult? Function(_RemoveResource value)? removeResource,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateResource value)? updateResource,
    TResult Function(_RemoveResource value)? removeResource,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcesActionCopyWith<$Res> {
  factory $ResourcesActionCopyWith(
          ResourcesAction value, $Res Function(ResourcesAction) then) =
      _$ResourcesActionCopyWithImpl<$Res, ResourcesAction>;
}

/// @nodoc
class _$ResourcesActionCopyWithImpl<$Res, $Val extends ResourcesAction>
    implements $ResourcesActionCopyWith<$Res> {
  _$ResourcesActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateResourceCopyWith<$Res> {
  factory _$$_UpdateResourceCopyWith(
          _$_UpdateResource value, $Res Function(_$_UpdateResource) then) =
      __$$_UpdateResourceCopyWithImpl<$Res>;
  @useResult
  $Res call({ResourceModel resource});

  $ResourceModelCopyWith<$Res> get resource;
}

/// @nodoc
class __$$_UpdateResourceCopyWithImpl<$Res>
    extends _$ResourcesActionCopyWithImpl<$Res, _$_UpdateResource>
    implements _$$_UpdateResourceCopyWith<$Res> {
  __$$_UpdateResourceCopyWithImpl(
      _$_UpdateResource _value, $Res Function(_$_UpdateResource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
  }) {
    return _then(_$_UpdateResource(
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as ResourceModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceModelCopyWith<$Res> get resource {
    return $ResourceModelCopyWith<$Res>(_value.resource, (value) {
      return _then(_value.copyWith(resource: value));
    });
  }
}

/// @nodoc

class _$_UpdateResource implements _UpdateResource {
  const _$_UpdateResource({required this.resource});

  @override
  final ResourceModel resource;

  @override
  String toString() {
    return 'ResourcesAction.updateResource(resource: $resource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateResource &&
            (identical(other.resource, resource) ||
                other.resource == resource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateResourceCopyWith<_$_UpdateResource> get copyWith =>
      __$$_UpdateResourceCopyWithImpl<_$_UpdateResource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResourceModel resource) updateResource,
    required TResult Function(String resourceName) removeResource,
    required TResult Function() clear,
  }) {
    return updateResource(resource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResourceModel resource)? updateResource,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function()? clear,
  }) {
    return updateResource?.call(resource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResourceModel resource)? updateResource,
    TResult Function(String resourceName)? removeResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (updateResource != null) {
      return updateResource(resource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateResource value) updateResource,
    required TResult Function(_RemoveResource value) removeResource,
    required TResult Function(_Clear value) clear,
  }) {
    return updateResource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateResource value)? updateResource,
    TResult? Function(_RemoveResource value)? removeResource,
    TResult? Function(_Clear value)? clear,
  }) {
    return updateResource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateResource value)? updateResource,
    TResult Function(_RemoveResource value)? removeResource,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (updateResource != null) {
      return updateResource(this);
    }
    return orElse();
  }
}

abstract class _UpdateResource implements ResourcesAction {
  const factory _UpdateResource({required final ResourceModel resource}) =
      _$_UpdateResource;

  ResourceModel get resource;
  @JsonKey(ignore: true)
  _$$_UpdateResourceCopyWith<_$_UpdateResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveResourceCopyWith<$Res> {
  factory _$$_RemoveResourceCopyWith(
          _$_RemoveResource value, $Res Function(_$_RemoveResource) then) =
      __$$_RemoveResourceCopyWithImpl<$Res>;
  @useResult
  $Res call({String resourceName});
}

/// @nodoc
class __$$_RemoveResourceCopyWithImpl<$Res>
    extends _$ResourcesActionCopyWithImpl<$Res, _$_RemoveResource>
    implements _$$_RemoveResourceCopyWith<$Res> {
  __$$_RemoveResourceCopyWithImpl(
      _$_RemoveResource _value, $Res Function(_$_RemoveResource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceName = null,
  }) {
    return _then(_$_RemoveResource(
      resourceName: null == resourceName
          ? _value.resourceName
          : resourceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveResource implements _RemoveResource {
  const _$_RemoveResource({required this.resourceName});

  @override
  final String resourceName;

  @override
  String toString() {
    return 'ResourcesAction.removeResource(resourceName: $resourceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveResource &&
            (identical(other.resourceName, resourceName) ||
                other.resourceName == resourceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resourceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveResourceCopyWith<_$_RemoveResource> get copyWith =>
      __$$_RemoveResourceCopyWithImpl<_$_RemoveResource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResourceModel resource) updateResource,
    required TResult Function(String resourceName) removeResource,
    required TResult Function() clear,
  }) {
    return removeResource(resourceName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResourceModel resource)? updateResource,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function()? clear,
  }) {
    return removeResource?.call(resourceName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResourceModel resource)? updateResource,
    TResult Function(String resourceName)? removeResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (removeResource != null) {
      return removeResource(resourceName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateResource value) updateResource,
    required TResult Function(_RemoveResource value) removeResource,
    required TResult Function(_Clear value) clear,
  }) {
    return removeResource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateResource value)? updateResource,
    TResult? Function(_RemoveResource value)? removeResource,
    TResult? Function(_Clear value)? clear,
  }) {
    return removeResource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateResource value)? updateResource,
    TResult Function(_RemoveResource value)? removeResource,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (removeResource != null) {
      return removeResource(this);
    }
    return orElse();
  }
}

abstract class _RemoveResource implements ResourcesAction {
  const factory _RemoveResource({required final String resourceName}) =
      _$_RemoveResource;

  String get resourceName;
  @JsonKey(ignore: true)
  _$$_RemoveResourceCopyWith<_$_RemoveResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearCopyWith<$Res> {
  factory _$$_ClearCopyWith(_$_Clear value, $Res Function(_$_Clear) then) =
      __$$_ClearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearCopyWithImpl<$Res>
    extends _$ResourcesActionCopyWithImpl<$Res, _$_Clear>
    implements _$$_ClearCopyWith<$Res> {
  __$$_ClearCopyWithImpl(_$_Clear _value, $Res Function(_$_Clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Clear implements _Clear {
  const _$_Clear();

  @override
  String toString() {
    return 'ResourcesAction.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResourceModel resource) updateResource,
    required TResult Function(String resourceName) removeResource,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResourceModel resource)? updateResource,
    TResult? Function(String resourceName)? removeResource,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResourceModel resource)? updateResource,
    TResult Function(String resourceName)? removeResource,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateResource value) updateResource,
    required TResult Function(_RemoveResource value) removeResource,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateResource value)? updateResource,
    TResult? Function(_RemoveResource value)? removeResource,
    TResult? Function(_Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateResource value)? updateResource,
    TResult Function(_RemoveResource value)? removeResource,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements ResourcesAction {
  const factory _Clear() = _$_Clear;
}
