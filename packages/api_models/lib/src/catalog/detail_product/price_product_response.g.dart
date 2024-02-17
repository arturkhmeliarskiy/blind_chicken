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
      pc: json['pc'] as int?,
      pbc: json['pbc'] as int?,
      cashback: json['cashback'] as int?,
      bonusLoyal: json['bonus_loyal'] as int?,
      bonusGift: json['bonus_gift'] as int?,
      bonusYear: json['bonus_year'] as int?,
      discountVal: json['discount_val'] as int?,
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
    };
