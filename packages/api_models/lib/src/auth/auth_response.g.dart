// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      r: json['r'] as String?,
      captcha: json['captcha'] == null
          ? null
          : CapthaResponse.fromJson(json['captcha'] as Map<String, dynamic>),
      message: json['e'] as String?,
      seconds: json['t'] as int?,
      send: json['send'] as String?,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'captcha': instance.captcha,
      'e': instance.message,
      't': instance.seconds,
      'send': instance.send,
    };
