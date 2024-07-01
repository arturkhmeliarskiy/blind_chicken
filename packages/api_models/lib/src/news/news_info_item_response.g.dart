// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_info_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsInfoItemResponseImpl _$$NewsInfoItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsInfoItemResponseImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      createAt: json['create_at'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      video: json['video'] as String?,
      typeMedia: json['type_media'] as String?,
      description: json['description'] as String?,
      titleButton: json['title_button'] as String?,
      typePath: json['type_path'] as String?,
      path: json['path'] as String?,
      code: json['code_product'] as String?,
      sort: json['sort'] as String?,
      filterSelect: json['filter_select'] as String?,
      uidStore: json['uid_store'] as String?,
      numberViews: json['number_views'] as int?,
      isViewed: json['is_viewed'] as bool?,
    );

Map<String, dynamic> _$$NewsInfoItemResponseImplToJson(
        _$NewsInfoItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'create_at': instance.createAt,
      'images': instance.images,
      'video': instance.video,
      'type_media': instance.typeMedia,
      'description': instance.description,
      'title_button': instance.titleButton,
      'type_path': instance.typePath,
      'path': instance.path,
      'code_product': instance.code,
      'sort': instance.sort,
      'filter_select': instance.filterSelect,
      'uid_store': instance.uidStore,
      'number_views': instance.numberViews,
      'is_viewed': instance.isViewed,
    };
