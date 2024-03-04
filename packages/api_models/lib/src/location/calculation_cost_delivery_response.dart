import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculation_cost_delivery_response.freezed.dart';
part 'calculation_cost_delivery_response.g.dart';

@freezed
class CalculationCostDeliveryRsponse with _$CalculationCostDeliveryRsponse {
  const CalculationCostDeliveryRsponse._();
  factory CalculationCostDeliveryRsponse({
    String? r,
    String? e,
    int? price,
  }) = _CalculationCostDeliveryRsponse;
  factory CalculationCostDeliveryRsponse.fromJson(Map<String, dynamic> json) =>
      _$CalculationCostDeliveryRsponseFromJson(json);
}
