// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_receipt_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeReceiptDataModel _$TypeReceiptDataModelFromJson(
        Map<String, dynamic> json) =>
    TypeReceiptDataModel(
      phoneNumber: json['phoneNumber'] as String,
      pickup:
          BoutiqueDataModel.fromJson(json['pickup'] as Map<String, dynamic>),
      delivery: BasketAddressDataModel.fromJson(
          json['delivery'] as Map<String, dynamic>),
      typeReceipt: json['typeReceipt'] as String,
    );

Map<String, dynamic> _$TypeReceiptDataModelToJson(
        TypeReceiptDataModel instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'pickup': instance.pickup,
      'delivery': instance.delivery,
      'typeReceipt': instance.typeReceipt,
    };
