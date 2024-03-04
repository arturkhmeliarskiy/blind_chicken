import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_info_item_data_model.freezed.dart';

@freezed
class BasketInfoItemDataModel with _$BasketInfoItemDataModel {
  const BasketInfoItemDataModel._();
  factory BasketInfoItemDataModel({
    required String code,
    required String sku,
    required int count,
  }) = _BasketInfoItemDataModel;
}
