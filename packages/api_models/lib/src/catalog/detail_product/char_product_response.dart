import 'package:freezed_annotation/freezed_annotation.dart';

part 'char_product_response.freezed.dart';
part 'char_product_response.g.dart';

@freezed
class CharProductResponse with _$CharProductResponse {
  const CharProductResponse._();
  factory CharProductResponse({
    String? name,
    String? value,
  }) = _CharProductResponse;
  factory CharProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CharProductResponseFromJson(json);
}
