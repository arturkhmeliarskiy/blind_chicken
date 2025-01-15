import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/brand_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/breacumb_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/category_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/char_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/option_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/photo_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/place_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/price_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/section_item_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/sku_product_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/stock_product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_product_response.freezed.dart';
part 'detail_product_response.g.dart';

@freezed
class DetailProductResponse with _$DetailProductResponse {
  const DetailProductResponse._();
  factory DetailProductResponse({
    int? code,
    PhotoProductResponse? photo,
    @JsonKey(name: 'breadcrumb', fromJson: _convertBreadcrumb)
    List<BreacumbProductResponse>? breadcrumb,
    BrandProductResponse? brand,
    CategoryProductResponse? category,
    List<OptionProductResponse>? option,
    @JsonKey(name: 'sku', fromJson: _convertSku) List<SkuProductResponse>? sku,
    @JsonKey(name: 'stock', fromJson: _convertStock) List<StockProductResponse>? stock,
    PlaceProductResponse? place,
    @JsonKey(name: 'char', fromJson: _convertChar) List<CharProductResponse>? char,
    @JsonKey(name: 'sections', fromJson: _convertSections) List<SectionsProductResponse>? sections,
    String? text,
    String? name,
    int? quantity,
    String? art,
    @JsonKey(name: 'user_discount') int? userDiscount,
    @JsonKey(name: 'user_buy_for_next_discount') int? userBuyForNextDiscount,
    @JsonKey(name: 'user_buy_for_next_discount_val') int? userBuyForNextDiscountVal,
    @JsonKey(name: 'user_next_discount') int? userNextDiscount,
    PriceProductResponse? price,
    String? r,
    String? e,
    String? errorMessage,
    DetailProductVideoResponse? video,
  }) = _DetailProductResponse;
  factory DetailProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailProductResponseFromJson(json);
}

List<SkuProductResponse> _convertSku(dynamic json) {
  List<SkuProductResponse> listSku = [];
  if (json is! List) {
    Map value = Map.of(json);
    List<dynamic> keysList = Map.of(json).keys.toList();

    for (int i = 0; i < keysList.length; i++) {
      listSku.add(
        SkuProductResponse(
          id: keysList[i],
          value: value[keysList[i]],
        ),
      );
    }
  }

  return listSku;
}

List<StockProductResponse> _convertStock(dynamic json) {
  List<StockProductResponse> listStock = [];
  if (json is! List) {
    Map value = Map.of(json);
    List<dynamic> keysList = Map.of(json).keys.toList();

    for (int i = 0; i < keysList.length; i++) {
      List<String> list = (value[keysList[i]] is String)
          ? []
          : (value[keysList[i]] as List<dynamic>)
              .map(
                (item) => item.toString(),
              )
              .toList();
      listStock.add(
        StockProductResponse(
          id: keysList[i],
          list: (value[keysList[i]] is String) ? [] : list,
        ),
      );
    }
  }
  return listStock;
}

List<CharProductResponse> _convertChar(dynamic json) {
  List<CharProductResponse> listChar = [];
  if (json is! List) {
    Map value = Map.of(json);
    List<dynamic> keysList = Map.of(json).keys.toList();

    for (int i = 0; i < keysList.length; i++) {
      listChar.add(
        CharProductResponse(
          name: value[keysList[i]]['n'],
          value: value[keysList[i]]['v'],
        ),
      );
    }
  }
  return listChar;
}

List<BreacumbProductResponse> _convertBreadcrumb(dynamic json) {
  List<BreacumbProductResponse> listBreacumb = [];
  if (json is! List) {
    Map value = Map.of(json);
    List<dynamic> keysList = Map.of(json).keys.toList();

    for (int i = 0; i < keysList.length; i++) {
      List<dynamic> keysListMap = Map.of(value[keysList[i]]).keys.toList();
      for (int j = 0; j < keysListMap.length; j++) {
        listBreacumb.add(
          BreacumbProductResponse(
            name: keysListMap[j],
            value: value[keysList[i]][keysListMap[j]],
          ),
        );
      }
    }
  }
  return listBreacumb;
}

List<SectionsProductResponse> _convertSections(dynamic json) {
  List<SectionsProductResponse> listSections = [];
  if (json is! List) {
    Map value = Map.of(json);
    List<dynamic> keysList = Map.of(json).keys.toList();

    for (int i = 0; i < keysList.length; i++) {
      listSections.add(
        SectionsProductResponse(
          name: keysList[i],
          list: List<SectionItemProductResponse>.from(
            (value[keysList[i]] as List<dynamic>).map(
              (item) {
                return SectionItemProductResponse.fromJson(item);
              },
            ),
          ),
        ),
      );
    }
  }
  return listSections;
}
