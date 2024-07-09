import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_banner_data_response.freezed.dart';
part 'top_banner_data_response.g.dart';

@freezed
class TopBannerDataResponse with _$TopBannerDataResponse {
  const TopBannerDataResponse._();
  factory TopBannerDataResponse({
    String? title,
    @JsonKey(name: 'color_text') String? colorText,
    @JsonKey(name: 'color_background') String? colorBackground,
    String? type,
    String? section,
    String? uid,
  }) = _TopBannerDataResponse;
  factory TopBannerDataResponse.fromJson(Map<String, dynamic> json) =>
      _$TopBannerDataResponseFromJson(json);
}
