// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_content_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckContentInfoResponseImpl _$$CheckContentInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckContentInfoResponseImpl(
      dateTime: json['date_time'] as String?,
      screens:
          (json['screens'] as List<dynamic>?)?.map((e) => e as String).toList(),
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$CheckContentInfoResponseImplToJson(
        _$CheckContentInfoResponseImpl instance) =>
    <String, dynamic>{
      'date_time': instance.dateTime,
      'screens': instance.screens,
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
    };
