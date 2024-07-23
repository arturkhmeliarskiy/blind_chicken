// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_version_app_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreVersionAppResponseImpl _$$StoreVersionAppResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreVersionAppResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      version: json['version'] == null
          ? null
          : StoreVersionAppDataResponse.fromJson(
              json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StoreVersionAppResponseImplToJson(
        _$StoreVersionAppResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'version': instance.version,
    };
