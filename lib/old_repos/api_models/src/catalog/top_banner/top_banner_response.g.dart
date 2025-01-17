// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopBannerResponseImpl _$$TopBannerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopBannerResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      data: json['data'] == null
          ? null
          : TopBannerDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopBannerResponseImplToJson(
        _$TopBannerResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'data': instance.data,
    };
