// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      phone: json['phone'] as String?,
      status: json['status'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      rest: (json['rest'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      virtualcardscod: json['virtualcardscod'] as String?,
      message: json['e'] as String?,
      sumBuy: (json['sum_buy'] as num?)?.toInt(),
      nextDiscount: (json['next_discount'] as num?)?.toInt(),
      buyForNext: (json['buy_for_next_discount'] as num?)?.toInt(),
      activeBonus: (json['active_bonus'] as num?)?.toInt(),
      allBonus: (json['all_bonus'] as num?)?.toInt(),
      schemLoyalty: (json['schem_loyalty'] as List<dynamic>?)
          ?.map((e) => SchemLoyaltyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'status': instance.status,
      'discount': instance.discount,
      'rest': instance.rest,
      'limit': instance.limit,
      'name': instance.name,
      'email': instance.email,
      'virtualcardscod': instance.virtualcardscod,
      'e': instance.message,
      'sum_buy': instance.sumBuy,
      'next_discount': instance.nextDiscount,
      'buy_for_next_discount': instance.buyForNext,
      'active_bonus': instance.activeBonus,
      'all_bonus': instance.allBonus,
      'schem_loyalty': instance.schemLoyalty,
    };
