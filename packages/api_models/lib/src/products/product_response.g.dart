// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      catrgory: json['catrgory'] as String?,
      size: (json['size'] as List<dynamic>?)?.map((e) => e as int).toList(),
      price: json['price'] as int?,
      brend: json['brend'] as String?,
      lensDiameter: json['lens_diameter'] as int?,
      templeLength: json['temple_length'] as int?,
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
      'catrgory': instance.catrgory,
      'size': instance.size,
      'price': instance.price,
      'brend': instance.brend,
      'lens_diameter': instance.lensDiameter,
      'temple_length': instance.templeLength,
      'country': instance.country,
      'images': instance.images,
      'variants': instance.variants,
    };
