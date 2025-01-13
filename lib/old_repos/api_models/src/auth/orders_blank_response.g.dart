// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_blank_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersBlankResponseImpl _$$OrdersBlankResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrdersBlankResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderBlankResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersBlankResponseImplToJson(
        _$OrdersBlankResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'orders': instance.orders,
    };
