import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_product_response.freezed.dart';
part 'order_product_response.g.dart';

@freezed
class OrderProductResponse with _$OrderProductResponse {
  const OrderProductResponse._();
  factory OrderProductResponse({
    String? code,
    String? img,
    String? price,
    String? count,
    @JsonKey(name: 'promocode_info') String? promocodeInfo,
    String? brand,
    String? name,
    String? sku,
  }) = _OrderProductResponse;
  factory OrderProductResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderProductResponseFromJson(json);
}
