// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsInfoResponseImpl _$$NewsInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => NewsInfoItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      isViewed: json['is_viewed'] as bool?,
    );

Map<String, dynamic> _$$NewsInfoResponseImplToJson(
        _$NewsInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'list': instance.list,
      'is_viewed': instance.isViewed,
    };
