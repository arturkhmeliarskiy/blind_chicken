// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_media_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneMediaInfoResponseImpl _$$OneMediaInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OneMediaInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      data: json['data'] == null
          ? null
          : MediaInfoItemResponse.fromJson(
              json['data'] as Map<String, dynamic>),
      isViewed: json['is_viewed'] as bool?,
    );

Map<String, dynamic> _$$OneMediaInfoResponseImplToJson(
        _$OneMediaInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
      'is_viewed': instance.isViewed,
    };
