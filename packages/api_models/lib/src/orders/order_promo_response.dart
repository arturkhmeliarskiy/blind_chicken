import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_promo_response.freezed.dart';
part 'order_promo_response.g.dart';

@freezed
class OrderPromoResponse with _$OrderPromoResponse {
  const OrderPromoResponse._();
  factory OrderPromoResponse({
    String? promocode,
    @JsonKey(name: 'promo_info') String? promocodeInfo,
  }) = _OrderPromoResponse;
  factory OrderPromoResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderPromoResponseFromJson(json);
}
