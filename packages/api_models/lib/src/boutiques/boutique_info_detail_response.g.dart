// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boutique_info_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoutiqueInfoDetailResponseImpl _$$BoutiqueInfoDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BoutiqueInfoDetailResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      category: _convertCategory(json['category']),
    );

Map<String, dynamic> _$$BoutiqueInfoDetailResponseImplToJson(
        _$BoutiqueInfoDetailResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'category': instance.category,
    };
