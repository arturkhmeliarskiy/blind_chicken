import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_item_response.freezed.dart';
part 'brand_item_response.g.dart';

@freezed
class BrandItemResponse with _$BrandItemResponse {
  const BrandItemResponse._();
  factory BrandItemResponse({
    @JsonKey(name: 'u') String? u,
    @JsonKey(name: 'n') String? n,
  }) = _BrandItemResponse;
  factory BrandItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandItemResponseFromJson(json);
}
