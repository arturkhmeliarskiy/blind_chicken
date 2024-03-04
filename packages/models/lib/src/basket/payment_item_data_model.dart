import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_item_data_model.freezed.dart';

@freezed
class PaymentItemDataModel with _$PaymentItemDataModel {
  const PaymentItemDataModel._();
  factory PaymentItemDataModel({
    required String id,
    required String name,
  }) = _PaymentItemDataModel;
}
