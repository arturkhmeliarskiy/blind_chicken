import 'package:api_models/src/boutiques/boutique_foto_detail_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_info_data_response.freezed.dart';
part 'boutique_info_data_response.g.dart';

@freezed
class BoutiqueInfoDataResponse with _$BoutiqueInfoDataResponse {
  const BoutiqueInfoDataResponse._();
  factory BoutiqueInfoDataResponse({
    @JsonKey(name: 'foto_min_list') String? fotoMinList,
    @JsonKey(name: 'foto_detail') List<BoutiqueFotoDetailResponse>? fotoDetail,
    String? url,
    String? caption,
    String? address,
    String? schedule,
    @JsonKey(name: 'uid_store') String? uidStore,
    String? coordinates,
    @JsonKey(name: 'address_full') String? addressFull,
    @JsonKey(name: 'name_short') String? nameShort,
    String? name,
  }) = _BoutiqueInfoDataResponse;
  factory BoutiqueInfoDataResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueInfoDataResponseFromJson(json);
}
