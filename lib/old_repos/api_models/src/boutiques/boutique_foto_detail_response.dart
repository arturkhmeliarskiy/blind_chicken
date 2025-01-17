import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_foto_detail_response.freezed.dart';
part 'boutique_foto_detail_response.g.dart';

@freezed
class BoutiqueFotoDetailResponse with _$BoutiqueFotoDetailResponse {
  const BoutiqueFotoDetailResponse._();
  factory BoutiqueFotoDetailResponse({
    String? orig,
    String? min,
  }) = _BoutiqueFotoDetailResponse;
  factory BoutiqueFotoDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueFotoDetailResponseFromJson(json);
}
