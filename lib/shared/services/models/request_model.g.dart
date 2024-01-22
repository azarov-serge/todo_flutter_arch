// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestModel _$$_RequestModelFromJson(Map<String, dynamic> json) =>
    _$_RequestModel(
      method: json['method'] as String? ?? 'GET',
      url: json['url'] as String,
      params: (json['params'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      data: json['data'],
      id: json['id'] as String? ?? '0',
    );

Map<String, dynamic> _$$_RequestModelToJson(_$_RequestModel instance) =>
    <String, dynamic>{
      'method': instance.method,
      'url': instance.url,
      'params': instance.params,
      'headers': instance.headers,
      'data': instance.data,
      'id': instance.id,
    };
