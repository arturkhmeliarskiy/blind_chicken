// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchLocationInfoResponseImpl _$$SearchLocationInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchLocationInfoResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      zip: json['zip'] as int?,
      type: json['type'] as String?,
      typeShort: json['typeShort'] as String?,
      okato: json['okato'] as String?,
      contentType: json['contentType'] as String?,
      guid: json['guid'] as String?,
      ifnsfl: json['ifnsfl'] as String?,
      ifnsul: json['ifnsul'] as String?,
      oktmo: json['oktmo'] as String?,
      parentGuid: json['parentGuid'] as String?,
      cadnum: json['cadnum'] as String?,
      parents: (json['parents'] as List<dynamic>?)
          ?.map((e) =>
              SearchLocationInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchLocationInfoResponseImplToJson(
        _$SearchLocationInfoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'zip': instance.zip,
      'type': instance.type,
      'typeShort': instance.typeShort,
      'okato': instance.okato,
      'contentType': instance.contentType,
      'guid': instance.guid,
      'ifnsfl': instance.ifnsfl,
      'ifnsul': instance.ifnsul,
      'oktmo': instance.oktmo,
      'parentGuid': instance.parentGuid,
      'cadnum': instance.cadnum,
      'parents': instance.parents,
    };
