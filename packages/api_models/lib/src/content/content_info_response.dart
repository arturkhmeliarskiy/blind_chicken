import 'package:api_models/src/content/index.dart';
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
