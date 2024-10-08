import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/auth/schem_loyalty_data_model.dart';

part 'user_response.freezed.dart';

@freezed
class UserDataModel with _$UserDataModel {
  const UserDataModel._();
  factory UserDataModel({
    required String phone,
    required String status,
    required int discount,
    required int rest,
    required int limit,
    required String name,
    required String email,
    required String message,
    required int sumBuy,
    required int nextDiscount,
    required int buyForNext,
    required int activeBonus,
    required int allBonus,
    required String virtualcardscod,
    required List<SchemLoyaltyDataModel> schemLoyalty,
  }) = _UserDataModel;
}
