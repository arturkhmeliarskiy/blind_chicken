// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemResponseImpl _$$OrderItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemResponseImpl(
      id: json['id'] as String?,
      sum: (json['sum'] as num?)?.toInt(),
      status: json['status'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$OrderItemResponseImplToJson(
        _$OrderItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sum': instance.sum,
      'status': instance.status,
      'date': instance.date,
    };
