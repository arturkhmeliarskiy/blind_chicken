// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResponseImpl _$$OrdersResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrdersResponseImpl(
      r: json['r'] as String?,
      errorMessage: json['e'] as String?,
      countOrders: json['count_orders'] as String?,
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersResponseImplToJson(
        _$OrdersResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.errorMessage,
      'count_orders': instance.countOrders,
      'orders': instance.orders,
    };
