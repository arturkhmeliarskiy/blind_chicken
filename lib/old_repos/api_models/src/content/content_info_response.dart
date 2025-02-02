import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_info_response.freezed.dart';
part 'content_info_response.g.dart';

@freezed
class ContentInfoResponse with _$ContentInfoResponse {
  const ContentInfoResponse._();
  factory ContentInfoResponse({
    @JsonKey(name: 'date_time') String? dateTime,
    List<String>? content,
    List<String>? images,
    List<ContentInfoItemResponse>? info,
    String? r,
    String? e,
    String? errorMessage,
  }) = _ContentInfoResponse;
  factory ContentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ContentInfoResponseFromJson(json);
}
