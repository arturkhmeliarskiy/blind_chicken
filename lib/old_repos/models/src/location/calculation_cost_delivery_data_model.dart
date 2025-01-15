import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculation_cost_delivery_data_model.freezed.dart';

@freezed
class CalculationCostDeliveryDataModel with _$CalculationCostDeliveryDataModel {
  const CalculationCostDeliveryDataModel._();
  factory CalculationCostDeliveryDataModel({
    required String r,
    required String e,
    required int price,
  }) = _CalculationCostDeliveryDataModel;
}
