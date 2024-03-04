import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_order_data_model.freezed.dart';

@freezed
class PayOrderDataModel with _$PayOrderDataModel {
  const PayOrderDataModel._();
  factory PayOrderDataModel({
    required String r,
    required String e,
    required String url,
  }) = _PayOrderDataModel;
}
