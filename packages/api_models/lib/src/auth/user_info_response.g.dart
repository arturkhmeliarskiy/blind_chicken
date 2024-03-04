// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoResponseImpl _$$UserInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInfoResponseImpl(
      r: json['r'] as String?,
      message: json['e'] as String?,
      user: json['user'] == null
          ? null
          : UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoResponseImplToJson(
        _$UserInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.message,
      'user': instance.user,
    };
