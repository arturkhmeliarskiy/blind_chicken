import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_response.freezed.dart';
part 'brands_response.g.dart';

@freezed
class BrandsResponse with _$BrandsResponse {
  const BrandsResponse._();
  factory BrandsResponse({
    @JsonKey(
      name: 'brands',
      fromJson: _convertBrands,
    )
    List<BrandResponse>? brands,
    String? errorMessage,
  }) = _BrandsResponse;
  factory BrandsResponse.fromJson(Map<String, dynamic> json) => _$BrandsResponseFromJson(json);
}

List<BrandResponse>? _convertBrands(dynamic json) {
  List<BrandResponse> listBrands = [];

  if (json != null) {
    List<dynamic> keysList = Map.of(json).keys.toList();
    Map value = Map.of(json);
    for (int i = 0; i < keysList.length; i++) {
      final brands = value[keysList[i]] as List;
      if (brands.isNotEmpty) {
        listBrands.add(
          BrandResponse(
            title: keysList[i],
            value: List<BrandItemResponse>.from(
              brands.map(
                (item) => BrandItemResponse(
                  n: item['n'] ?? '',
                  u: item['u'] ?? '',
                ),
              ),
            ),
          ),
        );
      }
    }
  }

  return listBrands;
}
