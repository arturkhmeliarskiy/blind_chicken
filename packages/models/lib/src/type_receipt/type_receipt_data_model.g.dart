// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_receipt_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeReceiptDataModel _$TypeReceiptDataModelFromJson(
        Map<String, dynamic> json) =>
    TypeReceiptDataModel(
      phoneNumber: json['phoneNumber'] as String,
      pickup: json['pickup'] == null
          ? null
          : BoutiqueDataModel.fromJson(json['pickup'] as Map<String, dynamic>),
      delivery: (json['delivery'] as List<dynamic>)
          .map(
              (e) => BasketAddressDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
