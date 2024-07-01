// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogResponseImpl _$$CatalogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogResponseImpl(
      userDiscount: json['user_discount'] as String?,
      breadcrumbs: _convertBreadcrumbs(json['breadcrumbs']),
      h1: json['h1'] as String?,
      count: json['count'] as String?,
      sections: _convertSections(json['sections']),
      countFilter: json['countFilter'] as String?,
      filter: _convertFilter(json['filter']),
      products: (json['products'] as List<dynamic>?)
          ?.map(
              (e) => CatalogProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$CatalogResponseImplToJson(
        _$CatalogResponseImpl instance) =>
    <String, dynamic>{
      'user_discount': instance.userDiscount,
      'breadcrumbs': instance.breadcrumbs,
      'h1': instance.h1,
      'count': instance.count,
      'sections': instance.sections,
      'countFilter': instance.countFilter,
      'filter': instance.filter,
      'products': instance.products,
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
    };
