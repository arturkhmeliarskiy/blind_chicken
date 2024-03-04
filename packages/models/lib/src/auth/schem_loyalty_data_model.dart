import 'package:freezed_annotation/freezed_annotation.dart';

part 'schem_loyalty_data_model.freezed.dart';

@freezed
class SchemLoyaltyDataModel with _$SchemLoyaltyDataModel {
  const SchemLoyaltyDataModel._();
  factory SchemLoyaltyDataModel({
    required int discount,
    required int value,
  }) = _SchemLoyaltyDataModel;
}
