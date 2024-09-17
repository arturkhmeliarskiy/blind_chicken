// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_vision_check_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentVisionCheckResponseImpl
    _$$AppointmentVisionCheckResponseImplFromJson(Map<String, dynamic> json) =>
        _$AppointmentVisionCheckResponseImpl(
          name: json['name'] as String?,
          date: json['date'] as String?,
          time: json['time'] as String?,
          r: json['r'] as String?,
          e: json['e'] as String?,
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$$AppointmentVisionCheckResponseImplToJson(
        _$AppointmentVisionCheckResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'time': instance.time,
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
    };
