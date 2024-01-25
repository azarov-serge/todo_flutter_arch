// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResourceModel _$$_ResourceModelFromJson(Map<String, dynamic> json) =>
    _$_ResourceModel(
      id: json['id'] as String,
      loading: json['loading'] as bool? ?? false,
      loaded: json['loaded'] as bool? ?? false,
      data: json['data'],
      error: json['error'] as String? ?? '',
    );

Map<String, dynamic> _$$_ResourceModelToJson(_$_ResourceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loading': instance.loading,
      'loaded': instance.loaded,
      'data': instance.data,
      'error': instance.error,
    };
