// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionsProductResponseImpl _$$SectionsProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SectionsProductResponseImpl(
      name: json['name'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) =>
              SectionItemProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SectionsProductResponseImplToJson(
        _$SectionsProductResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'list': instance.list,
    };
