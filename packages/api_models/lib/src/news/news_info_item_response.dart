import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_info_item_response.freezed.dart';
part 'news_info_item_response.g.dart';

@freezed
class NewsInfoItemResponse with _$NewsInfoItemResponse {
  const NewsInfoItemResponse._();
  factory NewsInfoItemResponse({
    String? id,
    String? title,
    @JsonKey(name: 'create_at') String? createAt,
    List<String>? images,
    String? video,
    String? announcement,
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
  }) = _NewsInfoItemResponse;
  factory NewsInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsInfoItemResponseFromJson(json);
}
