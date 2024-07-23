// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_banner_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopBannerDataResponseImpl _$$TopBannerDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopBannerDataResponseImpl(
      title: json['title'] as String?,
      colorText: json['color_text'] as String?,
      colorBackground: json['color_background'] as String?,
      code: json['code_product'] as String?,
      idNews: json['id_news'] as String?,
      type: json['type'] as String?,
      section: json['section'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$$TopBannerDataResponseImplToJson(
        _$TopBannerDataResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'color_text': instance.colorText,
      'color_background': instance.colorBackground,
      'code_product': instance.code,
      'id_news': instance.idNews,
      'type': instance.type,
      'section': instance.section,
      'uid': instance.uid,
    };
