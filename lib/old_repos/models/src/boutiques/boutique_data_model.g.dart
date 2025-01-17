// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boutique_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoutiqueDataModel _$BoutiqueDataModelFromJson(Map<String, dynamic> json) =>
    BoutiqueDataModel(
      fotoMin: json['fotoMin'] as String,
      url: json['url'] as String,
      caption: json['caption'] as String,
      name: json['name'] as String,
      nameShort: json['nameShort'] as String,
      schedule: json['schedule'] as String,
      address: json['address'] as String,
      uidStore: json['uidStore'] as String,
      iconPath: json['iconPath'] as String,
      coordinates: BoutiqueCoordinatesDataModel.fromJson(
          json['coordinates'] as Map<String, dynamic>),
      sheduleInfo: (json['sheduleInfo'] as List<dynamic>)
          .map((e) =>
              BoutiqueSheduleDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sheduleDateTimeInfo:
          (json['sheduleDateTimeInfo'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k),
            (e as List<dynamic>)
                .map((e) => DateTime.parse(e as String))
                .toList()),
      ),
    );

Map<String, dynamic> _$BoutiqueDataModelToJson(BoutiqueDataModel instance) =>
    <String, dynamic>{
      'fotoMin': instance.fotoMin,
      'url': instance.url,
      'caption': instance.caption,
      'name': instance.name,
      'nameShort': instance.nameShort,
      'address': instance.address,
      'schedule': instance.schedule,
      'uidStore': instance.uidStore,
      'iconPath': instance.iconPath,
      'coordinates': instance.coordinates,
      'sheduleInfo': instance.sheduleInfo,
      'sheduleDateTimeInfo': instance.sheduleDateTimeInfo.map((k, e) =>
          MapEntry(k.toString(), e.map((e) => e.toIso8601String()).toList())),
    };
