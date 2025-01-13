import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_info_item_response.freezed.dart';
part 'media_info_item_response.g.dart';

@freezed
class MediaInfoItemResponse with _$MediaInfoItemResponse {
  const MediaInfoItemResponse._();
  factory MediaInfoItemResponse({
    String? id,
    String? title,
    @JsonKey(name: 'create_at') String? createAt,
    List<String>? images,
    String? video,
    @JsonKey(name: 'type_video') String? typeVideo,
    @JsonKey(name: 'video_image') String? videoImage,
    @JsonKey(name: 'type_media') String? typeMedia,
    String? description,
    @JsonKey(name: 'title_button') String? titleButton,
    @JsonKey(name: 'type_path') String? typePath,
    String? path,
    @JsonKey(name: 'code_product') String? code,
    String? sort,
    @JsonKey(name: 'filter_select') String? filterSelect,
    @JsonKey(name: 'uid_store') String? uidStore,
    @JsonKey(name: 'number_views') int? numberViews,
    @JsonKey(name: 'is_viewed') bool? isViewed,
  }) = _MediaInfoItemResponse;
  factory MediaInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaInfoItemResponseFromJson(json);
}
