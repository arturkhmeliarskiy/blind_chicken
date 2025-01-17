import 'package:blind_chicken/old_repos/api_models/src/news/news_info_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_news_info_response.freezed.dart';
part 'one_news_info_response.g.dart';

@freezed
class OneNewsInfoResponse with _$OneNewsInfoResponse {
  const OneNewsInfoResponse._();
  factory OneNewsInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    NewsInfoItemResponse? data,
    @JsonKey(name: 'is_viewed') bool? isViewed,
  }) = _OneNewsInfoResponse;
  factory OneNewsInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$OneNewsInfoResponseFromJson(json);
}
