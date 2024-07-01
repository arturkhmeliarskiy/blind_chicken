// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandsResponseImpl _$$BrandsResponseImplFromJson(Map<String, dynamic> json) =>
    _$BrandsResponseImpl(
      brands: _convertBrands(json['brands']),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$BrandsResponseImplToJson(
        _$BrandsResponseImpl instance) =>
    <String, dynamic>{
      'brands': instance.brands,
      'errorMessage': instance.errorMessage,
    };
