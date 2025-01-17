// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_gift_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderGiftCardResponseImpl _$$OrderGiftCardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderGiftCardResponseImpl(
      type: json['type'] as String?,
      color: json['color'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      sum: json['sum'] as String?,
    );

Map<String, dynamic> _$$OrderGiftCardResponseImplToJson(
        _$OrderGiftCardResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'color': instance.color,
      'name': instance.name,
      'img': instance.img,
      'sum': instance.sum,
    };
