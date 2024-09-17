import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_shedule_data_model.freezed.dart';

@freezed
class BoutiqueSheduleDataModel with _$BoutiqueSheduleDataModel {
  const BoutiqueSheduleDataModel._();
  factory BoutiqueSheduleDataModel({
    required int s,
    required int e,
  }) = _BoutiqueSheduleDataModel;
}
