// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_bonus_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentBonusResponseImpl _$$PaymentBonusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentBonusResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      info: json['info'] as String?,
      balance: json['balance'] as int?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$PaymentBonusResponseImplToJson(
        _$PaymentBonusResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'info': instance.info,
      'balance': instance.balance,
      'errorMessage': instance.errorMessage,
    };
