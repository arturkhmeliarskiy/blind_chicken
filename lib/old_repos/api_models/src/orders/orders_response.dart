import 'package:blind_chicken/old_repos/api_models/src/orders/order_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_response.freezed.dart';
part 'orders_response.g.dart';

@freezed
class OrdersResponse with _$OrdersResponse {
  const OrdersResponse._();
  factory OrdersResponse({
    String? r,
    @JsonKey(name: 'e') String? errorMessage,
    @JsonKey(name: 'count_orders') String? countOrders,
    List<OrderItemResponse>? orders,
  }) = _OrdersResponse;
  factory OrdersResponse.fromJson(Map<String, dynamic> json) => _$OrdersResponseFromJson(json);
}
