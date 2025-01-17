import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/basket/basket_info_item_data_model.dart';

part 'basket_info_data_model.freezed.dart';

@freezed
class BasketInfoDataModel with _$BasketInfoDataModel {
  const BasketInfoDataModel._();
  factory BasketInfoDataModel({
    required String r,
    required String e,
    required List<BasketInfoItemDataModel> basket,
  }) = _BasketInfoDataModel;
}
