import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/boutiques/boutique_data_info_data_model.dart';

part 'boutique_info_data_model.freezed.dart';

@freezed
class BoutiqueInfoDataModel with _$BoutiqueInfoDataModel {
  const BoutiqueInfoDataModel._();
  factory BoutiqueInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required BoutiqueDataInfoDataModel data,
  }) = _BoutiqueInfoDataModel;
}
