// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketResponseImpl _$$BasketResponseImplFromJson(Map<String, dynamic> json) =>
    _$BasketResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      count: json['count'] as int?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$BasketResponseImplToJson(
        _$BasketResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'count': instance.count,
      'errorMessage': instance.errorMessage,
    };
