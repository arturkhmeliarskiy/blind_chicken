import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_foto_detail_data_model.freezed.dart';

@freezed
class BoutiqueFotoDetailDataModel with _$BoutiqueFotoDetailDataModel {
  const BoutiqueFotoDetailDataModel._();
  factory BoutiqueFotoDetailDataModel({
    required String orig,
    required String min,
  }) = _BoutiqueFotoDetailDataModel;
}
