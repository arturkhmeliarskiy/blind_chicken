import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_brand_data_model.freezed.dart';

@freezed
class BasketBrandDataModel with _$BasketBrandDataModel {
  const BasketBrandDataModel._();
  factory BasketBrandDataModel({
    required String id,
    required String n,
    required String u,
  }) = _BasketBrandDataModel;
}
