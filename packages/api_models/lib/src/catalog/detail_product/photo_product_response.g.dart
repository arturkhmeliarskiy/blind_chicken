// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoProductResponseImpl _$$PhotoProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoProductResponseImpl(
      mini: (json['mini'] as List<dynamic>?)?.map((e) => e as String).toList(),
      full: (json['full'] as List<dynamic>?)?.map((e) => e as String).toList(),
      orig: (json['orig'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PhotoProductResponseImplToJson(
        _$PhotoProductResponseImpl instance) =>
    <String, dynamic>{
      'mini': instance.mini,
      'full': instance.full,
      'orig': instance.orig,
    };
