import 'package:blind_chicken/old_repos/api_models/src/boutiques/boutique_info_data_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_info_response.freezed.dart';
part 'boutique_info_response.g.dart';

@freezed
class BoutiqueInfoResponse with _$BoutiqueInfoResponse {
  const BoutiqueInfoResponse._();
  factory BoutiqueInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    BoutiqueInfoDataResponse? data,
  }) = _BoutiqueInfoResponse;
  factory BoutiqueInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueInfoResponseFromJson(json);
}
