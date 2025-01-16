// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      category: json['category'] as String?,
      size: (json['size'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toInt(),
      brend: json['brend'] as String?,
      lensDiameter: (json['lens_diameter'] as num?)?.toInt(),
      templeLength: (json['temple_length'] as num?)?.toInt(),
      country: json['country'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'size': instance.size,
      'price': instance.price,
      'brend': instance.brend,
      'lens_diameter': instance.lensDiameter,
      'temple_length': instance.templeLength,
      'country': instance.country,
      'images': instance.images,
      'variants': instance.variants,
    };
