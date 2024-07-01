// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaInfoResponseImpl _$$MediaInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map(
              (e) => MediaInfoItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      isViewed: json['is_viewed'] as bool?,
    );

Map<String, dynamic> _$$MediaInfoResponseImplToJson(
        _$MediaInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'list': instance.list,
      'is_viewed': instance.isViewed,
    };
