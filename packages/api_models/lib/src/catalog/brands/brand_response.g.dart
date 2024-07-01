// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandResponseImpl _$$BrandResponseImplFromJson(Map<String, dynamic> json) =>
    _$BrandResponseImpl(
      title: json['title'] as String?,
      value: (json['value'] as List<dynamic>?)
          ?.map((e) => BrandItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandResponseImplToJson(_$BrandResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'value': instance.value,
    };
