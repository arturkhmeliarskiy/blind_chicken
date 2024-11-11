import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'type_receipt_data_model.g.dart';

@JsonSerializable()
class TypeReceiptDataModel {
  final String phoneNumber;
  final BoutiqueDataModel pickup;
  final BasketAddressDataModel delivery;
  final String typeReceipt;

  TypeReceiptDataModel({
    required this.phoneNumber,
    required this.pickup,
    required this.delivery,
    required this.typeReceipt,
  });

  factory TypeReceiptDataModel.fromJson(Map<String, dynamic> json) =>
      _$TypeReceiptDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeReceiptDataModelToJson(this);
}
