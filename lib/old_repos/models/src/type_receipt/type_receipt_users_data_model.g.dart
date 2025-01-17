// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_receipt_users_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeReceiptUsersDataModel _$TypeReceiptUsersDataModelFromJson(
        Map<String, dynamic> json) =>
    TypeReceiptUsersDataModel(
      typeReceipt: (json['typeReceipt'] as List<dynamic>)
          .map((e) => TypeReceiptDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TypeReceiptUsersDataModelToJson(
        TypeReceiptUsersDataModel instance) =>
    <String, dynamic>{
      'typeReceipt': instance.typeReceipt,
    };
