// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_notification_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneNotificationInfoResponseImpl _$$OneNotificationInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OneNotificationInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      data: json['data'] == null
          ? null
          : NotificationInfoItemResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OneNotificationInfoResponseImplToJson(
        _$OneNotificationInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
    };
