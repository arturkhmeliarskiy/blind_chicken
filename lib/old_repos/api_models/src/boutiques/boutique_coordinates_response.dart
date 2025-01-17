import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_coordinates_response.freezed.dart';
part 'boutique_coordinates_response.g.dart';

@freezed
class BoutiqueCoordinatesResponse with _$BoutiqueCoordinatesResponse {
  const BoutiqueCoordinatesResponse._();
  factory BoutiqueCoordinatesResponse({
    double? latitude,
    double? longitude,
  }) = _BoutiqueCoordinatesResponse;
  factory BoutiqueCoordinatesResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueCoordinatesResponseFromJson(json);
}
