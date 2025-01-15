import 'package:blind_chicken/old_repos/api_models/src/news/media_info_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_media_info_response.freezed.dart';
part 'one_media_info_response.g.dart';

@freezed
class OneMediaInfoResponse with _$OneMediaInfoResponse {
  const OneMediaInfoResponse._();
  factory OneMediaInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    MediaInfoItemResponse? data,
    @JsonKey(name: 'is_viewed') bool? isViewed,
  }) = _OneMediaInfoResponse;
  factory OneMediaInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$OneMediaInfoResponseFromJson(json);
}
