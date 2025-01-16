// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_data_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketDataInfoResponseImpl _$$BasketDataInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BasketDataInfoResponseImpl(
      foto: json['foto'] as String?,
      price: (json['price'] as num?)?.toInt(),
      basePrice: (json['base_price'] as num?)?.toInt(),
      price1: (json['price_1'] as num?)?.toInt(),
      basePrice1: (json['base_price_1'] as num?)?.toInt(),
      promoDiscount1: (json['promo_discount_1'] as num?)?.toInt(),
      loyaltyDiscount1: (json['loyalty_discount_1'] as num?)?.toDouble(),
      brand: json['brand'] == null
          ? null
          : BasketBrandResponse.fromJson(json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : BasketCategoryResponse.fromJson(
              json['category'] as Map<String, dynamic>),
      nameView: json['name_view'] as String?,
      promo: json['promo'] as String?,
      promoValue: (json['promo_value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BasketDataInfoResponseImplToJson(
        _$BasketDataInfoResponseImpl instance) =>
    <String, dynamic>{
      'foto': instance.foto,
      'price': instance.price,
      'base_price': instance.basePrice,
      'price_1': instance.price1,
      'base_price_1': instance.basePrice1,
      'promo_discount_1': instance.promoDiscount1,
      'loyalty_discount_1': instance.loyaltyDiscount1,
      'brand': instance.brand,
      'category': instance.category,
      'name_view': instance.nameView,
      'promo': instance.promo,
      'promo_value': instance.promoValue,
    };
