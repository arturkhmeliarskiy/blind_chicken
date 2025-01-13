import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/basket/payment_item_data_model.dart';

part 'payments_data_model.freezed.dart';

@freezed
class PaymentsDataModel with _$PaymentsDataModel {
  const PaymentsDataModel._();
  factory PaymentsDataModel({
    required List<PaymentItemDataModel> payments,
    String? errorMessage,
  }) = _PaymentsDataModel;
}
