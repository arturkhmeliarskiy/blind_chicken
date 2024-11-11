// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boutique_coordinates_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoutiqueCoordinatesDataModel _$BoutiqueCoordinatesDataModelFromJson(
        Map<String, dynamic> json) =>
    BoutiqueCoordinatesDataModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$BoutiqueCoordinatesDataModelToJson(
        BoutiqueCoordinatesDataModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
