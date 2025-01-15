import 'package:freezed_annotation/freezed_annotation.dart';

part 'schem_loyalty_response.freezed.dart';
part 'schem_loyalty_response.g.dart';

@freezed
class SchemLoyaltyResponse with _$SchemLoyaltyResponse {
  const SchemLoyaltyResponse._();
  factory SchemLoyaltyResponse({
    int? discount,
    int? value,
  }) = _SchemLoyaltyResponse;
  factory SchemLoyaltyResponse.fromJson(Map<String, dynamic> json) =>
      _$SchemLoyaltyResponseFromJson(json);
}
