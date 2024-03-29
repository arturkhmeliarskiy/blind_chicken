// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouritesResponseImpl _$$FavouritesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouritesResponseImpl(
      code: json['code'] as String?,
      sku: json['sku'] as String?,
      favorites: (json['favorites'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$FavouritesResponseImplToJson(
        _$FavouritesResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'sku': instance.sku,
      'favorites': instance.favorites,
      'errorMessage': instance.errorMessage,
    };
