import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/orders/order_item_data_model.dart';

part 'orders_data_model.freezed.dart';

@freezed
class OrdersDataModel with _$OrdersDataModel {
  const OrdersDataModel._();
  factory OrdersDataModel({
    required String r,
    required String errorMessage,
    required String countOrders,
    required List<OrderItemDataModel> orders,
  }) = _OrdersDataModel;
}
