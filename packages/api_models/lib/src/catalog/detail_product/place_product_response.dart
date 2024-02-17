import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_product_response.freezed.dart';
part 'place_product_response.g.dart';

@freezed
class PlaceProductResponse with _$PlaceProductResponse {
  const PlaceProductResponse._();
  factory PlaceProductResponse({
    @JsonKey(name: 'b') int? b,
    @JsonKey(name: 's') int? s,
  }) = _PlaceProductResponse;
  factory PlaceProductResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceProductResponseFromJson(json);
}
