import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/catalog/detail_product/sections_product_data_model.dart';
import 'package:models/src/index.dart';

part 'detail_product_data_model.freezed.dart';

@freezed
class DetailProductDataModel with _$DetailProductDataModel {
  const DetailProductDataModel._();
  factory DetailProductDataModel({
    required int code,
    required PhotoDataModel photo,
    required List<BreacumbProductDataModel> breadcrumb,
    required BrandProductDataModel brand,
    required CategoryProductDataModel category,
    required List<OptionProductDataModel> option,
    required List<SkuProductDataModel> sku,
    required List<SkuProductDataModel> skuToSoppingCart,
    required List<StockProductDataModel> stock,
    required PlaceProductDataModel place,
    required List<CharProductDataModel> char,
    required List<SectionsProductDataModel> sections,
    required String text,
    required String name,
    required int quantity,
    required String art,
    required int userDiscount,
    required int userBuyForNextDiscount,
    required int userBuyForNextDiscountVal,
    required int userNextDiscount,
    required PriceProductDataModel price,
    required ProductDataModel product,
    required String r,
    required String e,
    required String errorMessage,
    required DetailProductVideoDataModel video,
  }) = _DetailProductDataModel;
}
