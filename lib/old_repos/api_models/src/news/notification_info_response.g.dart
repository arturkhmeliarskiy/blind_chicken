// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationInfoResponseImpl _$$NotificationInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) =>
              NotificationInfoItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      isViewed: json['is_viewed'] as bool?,
    );

Map<String, dynamic> _$$NotificationInfoResponseImplToJson(
        _$NotificationInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'list': instance.list,
      'is_viewed': instance.isViewed,
    };
