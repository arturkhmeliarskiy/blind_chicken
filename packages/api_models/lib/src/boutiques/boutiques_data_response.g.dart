// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boutiques_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoutiquesDataResponseImpl _$$BoutiquesDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BoutiquesDataResponseImpl(
      fotoMin: json['foto_min'] as String?,
      url: json['url'] as String?,
      caption: json['caption'] as String?,
      name: json['name'] as String?,
      nameShort: json['name_short'] as String?,
      address: json['address'] as String?,
      schedule: json['schedule'] as String?,
      uidStore: json['uid_store'] as String?,
      coordinates: _convertCoordinates(json['coordinates']),
      scheduleInfo: (json['schedule_json'] as List<dynamic>?)
          ?.map((e) =>
              BoutiqueSheduleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BoutiquesDataResponseImplToJson(
        _$BoutiquesDataResponseImpl instance) =>
    <String, dynamic>{
      'foto_min': instance.fotoMin,
      'url': instance.url,
      'caption': instance.caption,
      'name': instance.name,
      'name_short': instance.nameShort,
      'address': instance.address,
      'schedule': instance.schedule,
      'uid_store': instance.uidStore,
      'coordinates': instance.coordinates,
      'schedule_json': instance.scheduleInfo,
    };
