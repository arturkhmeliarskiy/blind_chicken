// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_products_description_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalProductsDescriptionResponseImpl
    _$$AdditionalProductsDescriptionResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$AdditionalProductsDescriptionResponseImpl(
          name: json['name'] as String?,
          errorMessage: json['errorMessage'] as String?,
          products: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  CatalogProductResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AdditionalProductsDescriptionResponseImplToJson(
        _$AdditionalProductsDescriptionResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'errorMessage': instance.errorMessage,
      'products': instance.products,
    };
