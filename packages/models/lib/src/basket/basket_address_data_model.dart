import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_address_data_model.g.dart';

@JsonSerializable()
class BasketAddressDataModel {
  final String address;
  final String zip;
  String? city;
  String? street;
  String? house;
  String? flat;
  String? cityId;

  BasketAddressDataModel({
    required this.address,
    required this.zip,
    this.city,
    this.street,
    this.house,
    this.flat,
    this.cityId,
  });

  factory BasketAddressDataModel.fromJson(Map<String, dynamic> json) =>
      _$BasketAddressDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$BasketAddressDataModelToJson(this);
}
