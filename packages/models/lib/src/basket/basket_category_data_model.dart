import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_category_data_model.freezed.dart';

@freezed
class BasketCategoryDataModel with _$BasketCategoryDataModel {
  const BasketCategoryDataModel._();
  factory BasketCategoryDataModel({
    required String id,
    required String n,
    required String chN,
  }) = _BasketCategoryDataModel;
}
