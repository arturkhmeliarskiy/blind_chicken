// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogProductResponseImpl _$$CatalogProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogProductResponseImpl(
      v: json['v'] == null
          ? null
          : DetailProductVideoResponse.fromJson(
              json['v'] as Map<String, dynamic>),
      c: json['c'] as String?,
      f: json['f'] as String?,
      sl: (json['sl'] as List<dynamic>?)?.map((e) => e as String).toList(),
      b: json['b'] as String?,
      n: json['n'] as String?,
      p: json['p'] as String?,
      pb: json['pb'] as String?,
      pc: (json['pc'] as num?)?.toInt(),
      pbc: (json['pbc'] as num?)?.toInt(),
      ca: (json['ca'] as num?)?.toInt(),
      dv: (json['dv'] as num?)?.toInt(),
      d: (json['d'] as num?)?.toInt(),
      promo: json['promo'] as String?,
      promoValue: (json['promo_value'] as num?)?.toInt(),
      sz: (json['sz'] as List<dynamic>?)
          ?.map((e) =>
              CatalogSizeProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CatalogProductResponseImplToJson(
        _$CatalogProductResponseImpl instance) =>
    <String, dynamic>{
      'v': instance.v,
      'c': instance.c,
      'f': instance.f,
      'sl': instance.sl,
      'b': instance.b,
      'n': instance.n,
      'p': instance.p,
      'pb': instance.pb,
      'pc': instance.pc,
      'pbc': instance.pbc,
      'ca': instance.ca,
      'dv': instance.dv,
      'd': instance.d,
      'promo': instance.promo,
      'promo_value': instance.promoValue,
      'sz': instance.sz,
    };
