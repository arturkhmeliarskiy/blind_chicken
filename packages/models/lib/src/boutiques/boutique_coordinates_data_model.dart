import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_coordinates_data_model.g.dart';

@JsonSerializable()
class BoutiqueCoordinatesDataModel {
  final double latitude;
  final double longitude;

  BoutiqueCoordinatesDataModel({
    required this.latitude,
    required this.longitude,
  });

  factory BoutiqueCoordinatesDataModel.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueCoordinatesDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$BoutiqueCoordinatesDataModelToJson(this);
}
