import 'package:blind_chicken/old_repos/api_models/src/catalog/top_banner/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_banner_response.freezed.dart';
part 'top_banner_response.g.dart';

@freezed
class TopBannerResponse with _$TopBannerResponse {
  const TopBannerResponse._();
  factory TopBannerResponse({
    String? r,
    String? e,
    String? errorMessage,
    TopBannerDataResponse? data,
  }) = _TopBannerResponse;
  factory TopBannerResponse.fromJson(Map<String, dynamic> json) =>
      _$TopBannerResponseFromJson(json);
}
