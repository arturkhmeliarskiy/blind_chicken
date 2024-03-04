import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_delivery_data_model.freezed.dart';

@freezed
class OrderDeliveryDataModel with _$OrderDeliveryDataModel {
  const OrderDeliveryDataModel._();
  factory OrderDeliveryDataModel({
    required String price,
    required String method,
    required String address,
  }) = _OrderDeliveryDataModel;
}
