import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_products_description_response.freezed.dart';
part 'additional_products_description_response.g.dart';

@freezed
class AdditionalProductsDescriptionResponse with _$AdditionalProductsDescriptionResponse {
  const AdditionalProductsDescriptionResponse._();
  factory AdditionalProductsDescriptionResponse({
    String? name,
    String? errorMessage,
    List<CatalogProductResponse>? products,
  }) = _AdditionalProductsDescriptionResponse;
  factory AdditionalProductsDescriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$AdditionalProductsDescriptionResponseFromJson(json);
}
