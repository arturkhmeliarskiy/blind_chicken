// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentInfoResponseImpl _$$ContentInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentInfoResponseImpl(
      dateTime: json['date_time'] as String?,
      content:
          (json['content'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      info: (json['info'] as List<dynamic>?)
          ?.map((e) =>
              ContentInfoItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$ContentInfoResponseImplToJson(
        _$ContentInfoResponseImpl instance) =>
    <String, dynamic>{
      'date_time': instance.dateTime,
      'content': instance.content,
      'images': instance.images,
      'info': instance.info,
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
    };
