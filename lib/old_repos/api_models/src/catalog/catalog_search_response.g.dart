// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogSearchResponseImpl _$$CatalogSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogSearchResponseImpl(
      productsCount: (json['products_count'] as num?)?.toInt(),
      sectionsCount: (json['sections_count'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map(
              (e) => CatalogProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      sections: (json['sections'] as List<dynamic>?)
          ?.map(
              (e) => CatalogSectionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$CatalogSearchResponseImplToJson(
        _$CatalogSearchResponseImpl instance) =>
    <String, dynamic>{
      'products_count': instance.productsCount,
      'sections_count': instance.sectionsCount,
      'products': instance.products,
      'sections': instance.sections,
      'errorMessage': instance.errorMessage,
    };
