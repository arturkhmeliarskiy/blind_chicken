// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boutique_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoutiqueInfoResponseImpl _$$BoutiqueInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BoutiqueInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      data: json['data'] == null
          ? null
          : BoutiqueInfoDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BoutiqueInfoResponseImplToJson(
        _$BoutiqueInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
    };
