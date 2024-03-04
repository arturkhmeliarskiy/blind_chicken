import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/basket/basket_brand_data_model.dart';
import 'package:models/src/basket/basket_category_data_model.dart';

part 'basket_data_info_data_data_model.freezed.dart';

@freezed
class BasketDataInfoDataModel with _$BasketDataInfoDataModel {
  const BasketDataInfoDataModel._();
  factory BasketDataInfoDataModel({
    required String foto,
    required int price,
    required int basePrice,
    required int price1,
    required int basePrice1,
    required int promoDiscount1,
    required double loyaltyDiscount1,
    required BasketBrandDataModel brand,
    required BasketCategoryDataModel category,
    required String nameView,
  }) = _BasketDataInfoDataModel;
}
