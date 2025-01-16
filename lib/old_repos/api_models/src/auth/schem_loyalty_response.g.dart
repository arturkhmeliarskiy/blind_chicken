// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schem_loyalty_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchemLoyaltyResponseImpl _$$SchemLoyaltyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SchemLoyaltyResponseImpl(
      discount: (json['discount'] as num?)?.toInt(),
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SchemLoyaltyResponseImplToJson(
        _$SchemLoyaltyResponseImpl instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'value': instance.value,
    };
