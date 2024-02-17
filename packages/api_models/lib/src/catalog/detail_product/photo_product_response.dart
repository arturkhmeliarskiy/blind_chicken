import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_product_response.freezed.dart';
part 'photo_product_response.g.dart';

@freezed
class PhotoProductResponse with _$PhotoProductResponse {
  const PhotoProductResponse._();
  factory PhotoProductResponse({
    List<String>? mini,
    List<String>? full,
    List<String>? orig,
  }) = _PhotoProductResponse;
  factory PhotoProductResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoProductResponseFromJson(json);
}
