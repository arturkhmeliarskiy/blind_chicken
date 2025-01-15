import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_category_item_data_model.freezed.dart';

@freezed
class BoutiqueCategoryItemDataModel with _$BoutiqueCategoryItemDataModel {
  const BoutiqueCategoryItemDataModel._();
  factory BoutiqueCategoryItemDataModel({
    required String title,
    required List<dynamic> listInfo,
  }) = _BoutiqueCategoryItemDataModel;
}
