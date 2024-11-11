// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_address_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketAddressDataModel _$BasketAddressDataModelFromJson(
        Map<String, dynamic> json) =>
    BasketAddressDataModel(
      address: json['address'] as String,
      zip: json['zip'] as String,
      city: json['city'] as String?,
      street: json['street'] as String?,
      house: json['house'] as String?,
      flat: json['flat'] as String?,
      cityId: json['cityId'] as String?,
    );

Map<String, dynamic> _$BasketAddressDataModelToJson(
        BasketAddressDataModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'zip': instance.zip,
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
      'flat': instance.flat,
      'cityId': instance.cityId,
    };
