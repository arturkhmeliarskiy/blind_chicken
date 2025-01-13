import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_pick_data_model.freezed.dart';

@freezed
class DeliveryPickDataModel with _$DeliveryPickDataModel {
  const DeliveryPickDataModel._();
  factory DeliveryPickDataModel({
    required String id,
    required String name,
    required String shedule,
  }) = _DeliveryPickDataModel;
}
