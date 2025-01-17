import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_order_data_model.freezed.dart';

@freezed
class PaymentOrderDataModel with _$PaymentOrderDataModel {
  const PaymentOrderDataModel._();
  factory PaymentOrderDataModel({
    required String r,
    required String e,
    required int id,
    required String errorMessage,
  }) = _PaymentOrderDataModel;
}
