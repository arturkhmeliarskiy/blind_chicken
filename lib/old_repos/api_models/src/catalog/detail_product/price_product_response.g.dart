// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceProductResponseImpl _$$PriceProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PriceProductResponseImpl(
      p: json['p'] as String?,
      pb: json['pb'] as String?,
      pc: (json['pc'] as num?)?.toInt(),
      pbc: (json['pbc'] as num?)?.toInt(),
      cashback: (json['cashback'] as num?)?.toInt(),
      bonusLoyal: (json['bonus_loyal'] as num?)?.toInt(),
      bonusGift: (json['bonus_gift'] as num?)?.toInt(),
      bonusYear: (json['bonus_year'] as num?)?.toInt(),
      discountVal: (json['discount_val'] as num?)?.toInt(),
      promo: json['promo'] as String?,
      promoValue: (json['promo_value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PriceProductResponseImplToJson(
        _$PriceProductResponseImpl instance) =>
    <String, dynamic>{
      'p': instance.p,
      'pb': instance.pb,
      'pc': instance.pc,
      'pbc': instance.pbc,
      'cashback': instance.cashback,
      'bonus_loyal': instance.bonusLoyal,
      'bonus_gift': instance.bonusGift,
      'bonus_year': instance.bonusYear,
      'discount_val': instance.discountVal,
      'promo': instance.promo,
      'promo_value': instance.promoValue,
    };
