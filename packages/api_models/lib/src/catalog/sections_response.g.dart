// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionsResponseImpl _$$SectionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SectionsResponseImpl(
      prev: json['prev'] == null
          ? null
          : PrevResponse.fromJson(json['prev'] as Map<String, dynamic>),
      thiss: json['this'] == null
          ? null
          : ThisResponse.fromJson(json['this'] as Map<String, dynamic>),
      next: json['next'] == null
          ? null
          : NextResponse.fromJson(json['next'] as Map<String, dynamic>),
      listPrev: (json['listPrev'] as List<dynamic>?)
          ?.map((e) => SectionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      listNext: (json['listNext'] as List<dynamic>?)
          ?.map((e) => SectionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      listThis: (json['listThis'] as List<dynamic>?)
          ?.map((e) => SectionItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SectionsResponseImplToJson(
        _$SectionsResponseImpl instance) =>
    <String, dynamic>{
      'prev': instance.prev,
      'this': instance.thiss,
      'next': instance.next,
      'listPrev': instance.listPrev,
      'listNext': instance.listNext,
      'listThis': instance.listThis,
    };
