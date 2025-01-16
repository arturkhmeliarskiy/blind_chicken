// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_operation_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BadgeOperationInfoResponseImpl _$$BadgeOperationInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BadgeOperationInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      errorMessage: json['errorMessage'] as String?,
      news: (json['news'] as num?)?.toInt(),
      media: (json['media'] as num?)?.toInt(),
      notice: (json['notice'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BadgeOperationInfoResponseImplToJson(
        _$BadgeOperationInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'errorMessage': instance.errorMessage,
      'news': instance.news,
      'media': instance.media,
      'notice': instance.notice,
      'total': instance.total,
    };
