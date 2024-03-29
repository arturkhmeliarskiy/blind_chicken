// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuResponseImpl _$$MenuResponseImplFromJson(Map<String, dynamic> json) =>
    _$MenuResponseImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MenuItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$MenuResponseImplToJson(_$MenuResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'errorMessage': instance.errorMessage,
    };
