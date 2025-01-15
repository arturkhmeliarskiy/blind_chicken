import 'package:blind_chicken/old_repos/api_models/src/catalog/brands/brand_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_response.freezed.dart';
part 'brand_response.g.dart';

@freezed
class BrandResponse with _$BrandResponse {
  const BrandResponse._();
  factory BrandResponse({
    String? title,
    List<BrandItemResponse>? value,
  }) = _BrandResponse;
  factory BrandResponse.fromJson(Map<String, dynamic> json) => _$BrandResponseFromJson(json);
}
