// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuItemResponseImpl _$$MenuItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MenuItemResponseImpl(
      idParent: json['id_parent'] as String?,
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      title: json['title'] as int?,
      sub: json['sub'] as int?,
      brand: json['brand'] as int?,
    );

Map<String, dynamic> _$$MenuItemResponseImplToJson(
        _$MenuItemResponseImpl instance) =>
    <String, dynamic>{
      'id_parent': instance.idParent,
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'title': instance.title,
      'sub': instance.sub,
      'brand': instance.brand,
    };
