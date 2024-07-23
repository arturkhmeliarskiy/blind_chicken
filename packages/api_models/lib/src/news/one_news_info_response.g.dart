// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_news_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneNewsInfoResponseImpl _$$OneNewsInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OneNewsInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      data: json['data'] == null
          ? null
          : NewsInfoItemResponse.fromJson(json['data'] as Map<String, dynamic>),
      isViewed: json['is_viewed'] as bool?,
    );

Map<String, dynamic> _$$OneNewsInfoResponseImplToJson(
        _$OneNewsInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
      'is_viewed': instance.isViewed,
    };
