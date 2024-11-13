// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryAddressRsponseImpl _$$DeliveryAddressRsponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryAddressRsponseImpl(
      id: json['id'] as String?,
      addr: json['addr'] as String?,
      zip: json['zip'] as String?,
      cityId: json['city_id'] as String?,
    );

Map<String, dynamic> _$$DeliveryAddressRsponseImplToJson(
        _$DeliveryAddressRsponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addr': instance.addr,
      'zip': instance.zip,
      'city_id': instance.cityId,
    };
