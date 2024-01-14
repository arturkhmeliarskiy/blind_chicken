import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const ProductResponse._();
  factory ProductResponse({
    int? id,
    String? title,
    String? catrgory,
    List<int>? size,
    int? price,
    String? brend,
    @JsonKey(name: 'lens_diameter') int? lensDiameter,
    @JsonKey(name: 'temple_length') int? templeLength,
    String? country,
    List<String>? images,
    List<String>? variants,
  }) = _ProductResponse;
  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);
}
