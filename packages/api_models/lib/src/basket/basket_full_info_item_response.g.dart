// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_full_info_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketFullInfoItemResponseImpl _$$BasketFullInfoItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BasketFullInfoItemResponseImpl(
      code: json['code'] as String?,
      sku: json['sku'] as String?,
      count: json['count'] as int?,
      data: json['data'] == null
          ? null
          : BasketDataInfoResponse.fromJson(
              json['data'] as Map<String, dynamic>),
      skuName: json['sku_name'] as String?,
    );

Map<String, dynamic> _$$BasketFullInfoItemResponseImplToJson(
        _$BasketFullInfoItemResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sku': instance.sku,
      'count': instance.count,
      'data': instance.data,
      'sku_name': instance.skuName,
    };
