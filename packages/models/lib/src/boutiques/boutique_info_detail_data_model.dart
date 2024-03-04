import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/boutiques/boutique_category_item_data_model.dart';

part 'boutique_info_detail_data_model.freezed.dart';

@freezed
class BoutiqueInfoDetailDataModel with _$BoutiqueInfoDetailDataModel {
  const BoutiqueInfoDetailDataModel._();
  factory BoutiqueInfoDetailDataModel({
    required String r,
    required String e,
    required List<BoutiqueCategoryItemDataModel> category,
  }) = _BoutiqueInfoDetailDataModel;
}
