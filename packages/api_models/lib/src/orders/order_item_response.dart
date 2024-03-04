import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item_response.freezed.dart';
part 'order_item_response.g.dart';

@freezed
class OrderItemResponse with _$OrderItemResponse {
  const OrderItemResponse._();
  factory OrderItemResponse({
    String? id,
    int? sum,
    String? status,
    String? date,
  }) = _OrderItemResponse;
  factory OrderItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderItemResponseFromJson(json);
}
