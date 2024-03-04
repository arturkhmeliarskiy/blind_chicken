// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_full_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketFullInfoResponseImpl _$$BasketFullInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BasketFullInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      promoDescription: json['promo_description'] as String?,
      basket: (json['basket'] as List<dynamic>?)
          ?.map((e) =>
              BasketFullInfoItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BasketFullInfoResponseImplToJson(
        _$BasketFullInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'promo_description': instance.promoDescription,
      'basket': instance.basket,
    };
