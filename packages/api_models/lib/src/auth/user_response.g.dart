// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      phone: json['phone'] as String?,
      discount: json['discount'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      message: json['e'] as String?,
      sumBuy: json['sum_buy'] as int?,
      nextDiscount: json['next_discount'] as int?,
      buyForNext: json['buy_for_next_discount'] as int?,
      schemLoyalty: (json['schem_loyalty'] as List<dynamic>?)
          ?.map((e) => SchemLoyaltyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'discount': instance.discount,
      'name': instance.name,
      'email': instance.email,
      'e': instance.message,
      'sum_buy': instance.sumBuy,
      'next_discount': instance.nextDiscount,
      'buy_for_next_discount': instance.buyForNext,
      'schem_loyalty': instance.schemLoyalty,
    };
