import 'package:blind_chicken/old_repos/api_models/src/news/media_info_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_info_response.freezed.dart';
part 'media_info_response.g.dart';

@freezed
class MediaInfoResponse with _$MediaInfoResponse {
  const MediaInfoResponse._();
  factory MediaInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    List<MediaInfoItemResponse>? list,
    @JsonKey(name: 'is_viewed') bool? isViewed,
  }) = _MediaInfoResponse;
  factory MediaInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaInfoResponseFromJson(json);
}
