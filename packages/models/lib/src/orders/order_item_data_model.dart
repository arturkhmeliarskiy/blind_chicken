import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item_data_model.freezed.dart';

@freezed
class OrderItemDataModel with _$OrderItemDataModel {
  const OrderItemDataModel._();
  factory OrderItemDataModel({
    required String id,
    required int sum,
    required String status,
    required String date,
  }) = _OrderItemDataModel;
}
