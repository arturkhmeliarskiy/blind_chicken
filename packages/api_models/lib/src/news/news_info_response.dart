import 'package:api_models/src/news/news_info_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_info_response.freezed.dart';
part 'news_info_response.g.dart';

@freezed
class NewsInfoResponse with _$NewsInfoResponse {
  const NewsInfoResponse._();
  factory NewsInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    List<NewsInfoItemResponse>? list,
    @JsonKey(name: 'is_viewed') bool? isViewed,
  }) = _NewsInfoResponse;
  factory NewsInfoResponse.fromJson(Map<String, dynamic> json) => _$NewsInfoResponseFromJson(json);
}
