import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'type_receipt_data_model.g.dart';

@JsonSerializable()
class TypeReceiptDataModel {
  final String phoneNumber;
  BoutiqueDataModel? pickup;
  final List<BasketAddressDataModel> delivery;
  final String typeReceipt;

  TypeReceiptDataModel({
    required this.phoneNumber,
    this.pickup,
    required this.delivery,
    required this.typeReceipt,
  });

  factory TypeReceiptDataModel.fromJson(Map<String, dynamic> json) =>
      _$TypeReceiptDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeReceiptDataModelToJson(this);
}
