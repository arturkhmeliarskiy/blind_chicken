// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentOrderResponseImpl _$$PaymentOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentOrderResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$PaymentOrderResponseImplToJson(
        _$PaymentOrderResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'id': instance.id,
    };
