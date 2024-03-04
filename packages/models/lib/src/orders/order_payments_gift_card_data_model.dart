import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payments_gift_card_data_model.freezed.dart';

@freezed
class OrderPaymentsGiftCardDataModel with _$OrderPaymentsGiftCardDataModel {
  const OrderPaymentsGiftCardDataModel._();
  factory OrderPaymentsGiftCardDataModel({
    required String number,
    required String sum,
  }) = _OrderPaymentsGiftCardDataModel;
}
