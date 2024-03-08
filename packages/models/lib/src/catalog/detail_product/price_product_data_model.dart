import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_product_data_model.freezed.dart';

@freezed
class PriceProductDataModel with _$PriceProductDataModel {
  const PriceProductDataModel._();
  factory PriceProductDataModel({
    required String p,
    required String pc,
    required String pb,
    required int yourPrice,
    required int price,
    required int cashback,
    required int bonusLoyal,
    required int bonusGift,
    required int bonusYear,
    required int discountVal,
  }) = _PriceProductDataModel;
}
