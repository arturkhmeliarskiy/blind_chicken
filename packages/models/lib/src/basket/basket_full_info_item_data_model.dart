import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'basket_full_info_item_data_model.freezed.dart';

@freezed
class BasketFullInfoItemDataModel with _$BasketFullInfoItemDataModel {
  const BasketFullInfoItemDataModel._();
  factory BasketFullInfoItemDataModel({
    required String code,
    required String sku,
    required int count,
    required BasketDataInfoDataModel data,
    required ProductDataModel product,
    required String skuName,
  }) = _BasketFullInfoItemDataModel;
}
