// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_search_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogSearchInfoResponseImpl _$$CatalogSearchInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogSearchInfoResponseImpl(
      userDiscount: json['user_discount'] as String?,
      h1: json['h1'] as String?,
      count: json['count'] as String?,
      countFilter: json['count_filter'] as String?,
      filter: _convertFilter(json['filter']),
      products: (json['products'] as List<dynamic>?)
          ?.map(
              (e) => CatalogProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      r: json['r'] as String?,
      e: json['e'] as String?,
    );

Map<String, dynamic> _$$CatalogSearchInfoResponseImplToJson(
        _$CatalogSearchInfoResponseImpl instance) =>
    <String, dynamic>{
      'user_discount': instance.userDiscount,
      'h1': instance.h1,
      'count': instance.count,
      'count_filter': instance.countFilter,
      'filter': instance.filter,
      'products': instance.products,
      'r': instance.r,
      'e': instance.e,
    };
