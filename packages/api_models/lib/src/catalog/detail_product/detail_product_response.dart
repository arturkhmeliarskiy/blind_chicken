import 'package:api_models/src/catalog/detail_product/brand_product_response.dart';
import 'package:api_models/src/catalog/detail_product/breacumb_product_response.dart';
import 'package:api_models/src/catalog/detail_product/category_product_response.dart';
import 'package:api_models/src/catalog/detail_product/char_product_response.dart';
import 'package:api_models/src/catalog/detail_product/option_product_response.dart';
import 'package:api_models/src/catalog/detail_product/photo_product_response.dart';
import 'package:api_models/src/catalog/detail_product/place_product_response.dart';
import 'package:api_models/src/catalog/detail_product/price_product_response.dart';
import 'package:api_models/src/catalog/detail_product/section_item_product_response.dart';
import 'package:api_models/src/catalog/detail_product/sections_product_response.dart';
import 'package:api_models/src/catalog/detail_product/sku_product_response.dart';
import 'package:api_models/src/catalog/detail_product/stock_product_response.dart';
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
    int? quantity,
    int? art,
    int? userDiscount,
    PriceProductResponse? price,
    String? r,
    String? e,
  }) = _DetailProductResponse;
  factory DetailProductResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailProductResponseFromJson(json);
}

List<SkuProductResponse> _convertSku(dynamic json) {
  List<SkuProductResponse> listSku = [];
  if (!(json is List)) {
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
  Map value = Map.of(json);
  List<dynamic> keysList = Map.of(json).keys.toList();

  List<StockProductResponse> listStock = [];
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
  return listStock;
}

List<CharProductResponse> _convertChar(dynamic json) {
  Map value = Map.of(json);
  List<dynamic> keysList = Map.of(json).keys.toList();

  List<CharProductResponse> listChar = [];
  for (int i = 0; i < keysList.length; i++) {
    listChar.add(
      CharProductResponse(
        name: value[keysList[i]]['n'],
        value: value[keysList[i]]['v'],
      ),
    );
  }
  return listChar;
}

List<BreacumbProductResponse> _convertBreadcrumb(dynamic json) {
  Map value = Map.of(json);
  List<dynamic> keysList = Map.of(json).keys.toList();

  List<BreacumbProductResponse> listBreacumb = [];
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
  return listBreacumb;
}

List<SectionsProductResponse> _convertSections(dynamic json) {
  Map value = Map.of(json);
  List<dynamic> keysList = Map.of(json).keys.toList();

  List<SectionsProductResponse> listSections = [];
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
  return listSections;
}
