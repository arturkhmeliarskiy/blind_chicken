import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bonus_response.freezed.dart';
part 'payment_bonus_response.g.dart';

@freezed
class PaymentBonusResponse with _$PaymentBonusResponse {
  const PaymentBonusResponse._();
  factory PaymentBonusResponse({
    String? r,
    String? e,
    String? info,
    int? balance,
    String? errorMessage,
  }) = _PaymentBonusResponse;
  factory PaymentBonusResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentBonusResponseFromJson(json);
}
