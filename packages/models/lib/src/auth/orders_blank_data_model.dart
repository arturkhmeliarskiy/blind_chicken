import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/auth/order_blank_data_model.dart';

part 'orders_blank_data_model.freezed.dart';

@freezed
class OrdersBlankDataModel with _$OrdersBlankDataModel {
  const OrdersBlankDataModel._();
  factory OrdersBlankDataModel({
    required String r,
    required String message,
    required List<OrderBlankDataModel> orders,
    required String errorMessage,
  }) = _OrdersBlankDataModel;
}
