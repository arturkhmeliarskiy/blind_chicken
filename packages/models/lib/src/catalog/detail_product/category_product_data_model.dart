import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_data_model.freezed.dart';

@freezed
class CategoryProductDataModel with _$CategoryProductDataModel {
  const CategoryProductDataModel._();
  factory CategoryProductDataModel({
    required String id,
    required String n,
    required String u,
  }) = _CategoryProductDataModel;
}
