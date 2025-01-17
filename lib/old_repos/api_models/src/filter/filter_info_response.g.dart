// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterInfoResponseImpl _$$FilterInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterInfoResponseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      isSearch: json['isSearch'] as bool?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => FilterItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilterInfoResponseImplToJson(
        _$FilterInfoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isSearch': instance.isSearch,
      'items': instance.items,
    };
