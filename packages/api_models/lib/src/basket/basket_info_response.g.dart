// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketInfoResponseImpl _$$BasketInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BasketInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      basket: (json['basket'] as List<dynamic>?)
          ?.map(
              (e) => BasketInfoItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BasketInfoResponseImplToJson(
        _$BasketInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'basket': instance.basket,
    };
