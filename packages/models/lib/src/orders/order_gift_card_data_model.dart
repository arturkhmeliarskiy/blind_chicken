import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_gift_card_data_model.freezed.dart';

@freezed
class OrderGiftCardDataModel with _$OrderGiftCardDataModel {
  const OrderGiftCardDataModel._();
  factory OrderGiftCardDataModel({
    required String type,
    required String color,
    required String name,
    required String img,
    required String sum,
  }) = _OrderGiftCardDataModel;
}
