// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_context_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchContextResponseImpl _$$SearchContextResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchContextResponseImpl(
      contentType: json['contentType'] as String?,
      cityId: json['cityId'] as String?,
      streetId: json['streetId'] as String?,
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$SearchContextResponseImplToJson(
        _$SearchContextResponseImpl instance) =>
    <String, dynamic>{
      'contentType': instance.contentType,
      'cityId': instance.cityId,
      'streetId': instance.streetId,
      'query': instance.query,
    };
