// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boutique_info_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoutiqueInfoDataResponseImpl _$$BoutiqueInfoDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BoutiqueInfoDataResponseImpl(
      fotoMinList: json['foto_min_list'] as String?,
      fotoDetail: (json['foto_detail'] as List<dynamic>?)
          ?.map((e) =>
              BoutiqueFotoDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
      caption: json['caption'] as String?,
      address: json['address'] as String?,
      schedule: json['schedule'] as String?,
      uidStore: json['uid_store'] as String?,
      coordinates: _convertCoordinates(json['coordinates']),
      addressFull: json['address_full'] as String?,
      nameShort: json['name_short'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$BoutiqueInfoDataResponseImplToJson(
        _$BoutiqueInfoDataResponseImpl instance) =>
    <String, dynamic>{
      'foto_min_list': instance.fotoMinList,
      'foto_detail': instance.fotoDetail,
      'url': instance.url,
      'caption': instance.caption,
      'address': instance.address,
      'schedule': instance.schedule,
      'uid_store': instance.uidStore,
      'coordinates': instance.coordinates,
      'address_full': instance.addressFull,
      'name_short': instance.nameShort,
      'name': instance.name,
    };
