// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderProductResponseImpl _$$OrderProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderProductResponseImpl(
      code: json['code'] as String?,
      img: json['img'] as String?,
      price: json['price'] as String?,
      count: json['count'] as String?,
      promocodeInfo: json['promocode_info'] as String?,
      brand: json['brand'] as String?,
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      type: json['type'] as String?,
      identifier: json['identifier'] as String?,
      sectionCategoriesPath: (json['section_categories_path'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productCategoriesPath: (json['product_categories_path'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      titleScreen: json['title_screen'] as String?,
      searchQuery: json['search_query'] as String?,
    );

Map<String, dynamic> _$$OrderProductResponseImplToJson(
        _$OrderProductResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'img': instance.img,
      'price': instance.price,
      'count': instance.count,
      'promocode_info': instance.promocodeInfo,
      'brand': instance.brand,
      'name': instance.name,
      'sku': instance.sku,
      'type': instance.type,
      'identifier': instance.identifier,
      'section_categories_path': instance.sectionCategoriesPath,
      'product_categories_path': instance.productCategoriesPath,
      'title_screen': instance.titleScreen,
      'search_query': instance.searchQuery,
    };
