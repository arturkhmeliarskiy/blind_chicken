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
      news: json['news'] as int?,
      media: json['media'] as int?,
      notice: json['notice'] as int?,
      total: json['total'] as int?,
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
