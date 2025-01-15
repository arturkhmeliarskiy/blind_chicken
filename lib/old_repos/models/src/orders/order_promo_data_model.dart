import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_promo_data_model.freezed.dart';

@freezed
class OrderPromoDataModel with _$OrderPromoDataModel {
  const OrderPromoDataModel._();
  factory OrderPromoDataModel({
    required String promocode,
    required String promocodeInfo,
  }) = _OrderPromoDataModel;
}
