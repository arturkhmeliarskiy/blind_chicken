import 'package:blind_chicken/old_repos/api_models/src/basket/payment_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payments_response.freezed.dart';
part 'payments_response.g.dart';

@freezed
class PaymentsResponse with _$PaymentsResponse {
  const PaymentsResponse._();
  factory PaymentsResponse({
    List<PaymentItemResponse>? payments,
    String? errorMessage,
  }) = _PaymentsResponse;
  factory PaymentsResponse.fromJson(Map<String, dynamic> json) => _$PaymentsResponseFromJson(json);
}
