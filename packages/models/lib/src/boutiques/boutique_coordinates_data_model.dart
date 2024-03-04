import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_coordinates_data_model.freezed.dart';

@freezed
class BoutiqueCoordinatesDataModel with _$BoutiqueCoordinatesDataModel {
  const BoutiqueCoordinatesDataModel._();
  factory BoutiqueCoordinatesDataModel({
    required double latitude,
    required double longitude,
  }) = _BoutiqueCoordinatesDataModel;
}
