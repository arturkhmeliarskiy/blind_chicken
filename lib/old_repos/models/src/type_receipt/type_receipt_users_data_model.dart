import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'type_receipt_users_data_model.g.dart';

@JsonSerializable()
class TypeReceiptUsersDataModel {
  final List<TypeReceiptDataModel> typeReceipt;

  TypeReceiptUsersDataModel({
    required this.typeReceipt,
  });

  factory TypeReceiptUsersDataModel.fromJson(Map<String, dynamic> json) =>
      _$TypeReceiptUsersDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeReceiptUsersDataModelToJson(this);
}
