import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bonus_data_model.freezed.dart';

@freezed
class PaymentBonusDataModel with _$PaymentBonusDataModel {
  const PaymentBonusDataModel._();
  factory PaymentBonusDataModel({
    required String r,
    required String e,
    required String info,
    required int balance,
  }) = _PaymentBonusDataModel;
}
