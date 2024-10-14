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
      pc: json['pc'] as int?,
      pbc: json['pbc'] as int?,
      ca: json['ca'] as int?,
      dv: json['dv'] as int?,
      promo: json['promo'] as String?,
      promoValue: json['promo_value'] as int?,
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
      'promo': instance.promo,
      'promo_value': instance.promoValue,
      'sz': instance.sz,
    };
