// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_information_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInformationRequest _$UserInformationRequestFromJson(
        Map<String, dynamic> json) =>
    UserInformationRequest(
      code: json['code'] as String?,
      token: json['token'] as String?,
      hashToken: json['hashToken'] as String?,
      tel: json['tel'] as String?,
      hashTokenTel: json['hashTokenTel'] as String?,
      favorites: (json['favorites'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      basket: (json['basket'] as List<dynamic>?)
          ?.map((e) => BasketInfoRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserInformationRequestToJson(
        UserInformationRequest instance) =>
    <String, dynamic>{
      'code': instance.code,
      'token': instance.token,
      'hashToken': instance.hashToken,
      'tel': instance.tel,
      'hashTokenTel': instance.hashTokenTel,
      'favorites': instance.favorites,
      'basket': instance.basket,
    };
