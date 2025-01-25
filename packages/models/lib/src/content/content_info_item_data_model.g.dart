// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_info_item_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentInfoItemDataModel _$ContentInfoItemDataModelFromJson(Map<String, dynamic> json) =>
    ContentInfoItemDataModel(
      id: json['id'] as String,
      title: json['title'] as String,
      mobileImage: json['mobileImage'] as String,
      tabletImage: json['tabletImage'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ContentInfoItemDataModelToJson(ContentInfoItemDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'mobileImage': instance.mobileImage,
      'tabletImage': instance.tabletImage,
      'url': instance.url,
    };
