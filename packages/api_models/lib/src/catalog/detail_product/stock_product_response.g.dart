// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockProductResponseImpl _$$StockProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StockProductResponseImpl(
      id: json['id'] as String?,
      list: (json['list'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$StockProductResponseImplToJson(
        _$StockProductResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'list': instance.list,
    };
