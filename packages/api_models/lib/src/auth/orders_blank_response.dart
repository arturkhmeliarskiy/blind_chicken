import 'package:api_models/src/auth/order_blank_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_blank_response.freezed.dart';
part 'orders_blank_response.g.dart';

@freezed
class OrdersBlankResponse with _$OrdersBlankResponse {
  const OrdersBlankResponse._();
  factory OrdersBlankResponse({
    String? r,
    @JsonKey(name: 'e') String? message,
    List<OrderBlankResponse>? orders,
  }) = _OrdersBlankResponse;
  factory OrdersBlankResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersBlankResponseFromJson(json);
}
