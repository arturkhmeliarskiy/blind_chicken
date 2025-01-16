// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketInfoRequest _$BasketInfoRequestFromJson(Map<String, dynamic> json) =>
    BasketInfoRequest(
      code: json['code'] as String,
      sku: json['sku'] as String,
      count: (json['count'] as num).toInt(),
      type: json['type'] as String,
      identifier: json['identifier'] as String,
      sectionCategoriesPath: (json['section_categories_path'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      productCategoriesPath: (json['product_categories_path'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      titleScreen: json['title_screen'] as String,
      searchQuery: json['search_query'] as String,
    );

Map<String, dynamic> _$BasketInfoRequestToJson(BasketInfoRequest instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sku': instance.sku,
      'count': instance.count,
      'type': instance.type,
      'identifier': instance.identifier,
      'section_categories_path': instance.sectionCategoriesPath,
      'product_categories_path': instance.productCategoriesPath,
      'title_screen': instance.titleScreen,
      'search_query': instance.searchQuery,
    };
