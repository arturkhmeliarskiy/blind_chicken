// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketInfoRequest _$BasketInfoRequestFromJson(Map<String, dynamic> json) =>
    BasketInfoRequest(
      code: json['code'] as String,
      sku: json['sku'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$BasketInfoRequestToJson(BasketInfoRequest instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sku': instance.sku,
      'count': instance.count,
    };
