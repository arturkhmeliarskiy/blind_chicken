import 'package:api_models/src/auth/schem_loyalty_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const UserResponse._();
  factory UserResponse({
    String? phone,
    String? status,
    int? discount,
    int? rest,
    int? limit,
    String? name,
    String? email,
    String? virtualcardscod,
    @JsonKey(name: 'e') String? message,
    @JsonKey(name: 'sum_buy') int? sumBuy,
    @JsonKey(name: 'next_discount') int? nextDiscount,
    @JsonKey(name: 'buy_for_next_discount') int? buyForNext,
    @JsonKey(name: 'active_bonus') int? activeBonus,
    @JsonKey(name: 'all_bonus') int? allBonus,
    @JsonKey(name: 'schem_loyalty') List<SchemLoyaltyResponse>? schemLoyalty,
  }) = _UserResponse;
  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}
