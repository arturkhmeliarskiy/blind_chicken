import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/basket/basket_full_info_item_data_model.dart';

part 'basket_full_info_data_model.freezed.dart';

@freezed
class BasketFullInfoDataModel with _$BasketFullInfoDataModel {
  const BasketFullInfoDataModel._();
  factory BasketFullInfoDataModel({
    required String r,
    required String e,
    required String promoDescription,
    required List<BasketFullInfoItemDataModel> basket,
  }) = _BasketFullInfoDataModel;
}
