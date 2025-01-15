import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/catalog/detail_product/section_item_product_data_model.dart';

part 'sections_product_data_model.freezed.dart';

@freezed
class SectionsProductDataModel with _$SectionsProductDataModel {
  const SectionsProductDataModel._();
  factory SectionsProductDataModel({
    required String name,
    required List<SectionItemProductDataModel> list,
  }) = _SectionsProductDataModel;
}
