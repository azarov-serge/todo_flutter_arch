// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResourcesState _$$_ResourcesStateFromJson(Map<String, dynamic> json) =>
    _$_ResourcesState(
      resources: (json['resources'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, ResourceModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_ResourcesStateToJson(_$_ResourcesState instance) =>
    <String, dynamic>{
      'resources': instance.resources,
    };
