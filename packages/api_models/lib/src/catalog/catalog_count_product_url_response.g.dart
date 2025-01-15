// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_count_product_url_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogCountProductUrlResponseImpl
    _$$CatalogCountProductUrlResponseImplFromJson(Map<String, dynamic> json) =>
        _$CatalogCountProductUrlResponseImpl(
          r: json['r'] as String?,
          e: json['e'] as String?,
          count: (json['count'] as num?)?.toInt(),
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$$CatalogCountProductUrlResponseImplToJson(
        _$CatalogCountProductUrlResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'count': instance.count,
      'errorMessage': instance.errorMessage,
    };
