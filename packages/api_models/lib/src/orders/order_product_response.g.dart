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
    };
