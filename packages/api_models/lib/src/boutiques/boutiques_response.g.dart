// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boutiques_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoutiquesResponseImpl _$$BoutiquesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BoutiquesResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => BoutiquesDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BoutiquesResponseImplToJson(
        _$BoutiquesResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
