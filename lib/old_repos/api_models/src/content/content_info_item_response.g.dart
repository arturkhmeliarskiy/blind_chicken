// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_info_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentInfoItemResponseImpl _$$ContentInfoItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentInfoItemResponseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      mobileImage: json['mobile_image'] as String?,
      tabletImage: json['tablet_image'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ContentInfoItemResponseImplToJson(
        _$ContentInfoItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'mobile_image': instance.mobileImage,
      'tablet_image': instance.tabletImage,
      'url': instance.url,
    };
