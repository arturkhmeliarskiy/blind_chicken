// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryRsponseImpl _$$DeliveryRsponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryRsponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      deliveryId: json['delivery_id'] as String?,
      pick: json['pick'] == null
          ? null
          : DeliveryPickRsponse.fromJson(json['pick'] as Map<String, dynamic>),
      address: (json['address'] as List<dynamic>?)
          ?.map(
              (e) => DeliveryAddressRsponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeliveryRsponseImplToJson(
        _$DeliveryRsponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'delivery_id': instance.deliveryId,
      'pick': instance.pick,
      'address': instance.address,
    };
