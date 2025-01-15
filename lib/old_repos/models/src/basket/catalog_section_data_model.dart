import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_section_data_model.freezed.dart';

@freezed
class CatalogSectionDataModel with _$CatalogSectionDataModel {
  const CatalogSectionDataModel._();
  factory CatalogSectionDataModel({
    required String n,
    required String u,
    required String g,
  }) = _CatalogSectionDataModel;
}
