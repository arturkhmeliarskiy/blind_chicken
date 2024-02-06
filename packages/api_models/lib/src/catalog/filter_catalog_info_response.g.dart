// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_catalog_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterCatalogInfoResponseImpl _$$FilterCatalogInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterCatalogInfoResponseImpl(
      v: (json['v'] as List<dynamic>?)
          ?.map((e) => VResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      n: json['n'] as String?,
    );

Map<String, dynamic> _$$FilterCatalogInfoResponseImplToJson(
        _$FilterCatalogInfoResponseImpl instance) =>
    <String, dynamic>{
      'v': instance.v,
      'n': instance.n,
    };
