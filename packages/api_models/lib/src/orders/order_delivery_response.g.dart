// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_delivery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDeliveryResponseImpl _$$OrderDeliveryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDeliveryResponseImpl(
      price: json['price'] as String?,
      method: json['method'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$OrderDeliveryResponseImplToJson(
        _$OrderDeliveryResponseImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'method': instance.method,
      'address': instance.address,
    };
