import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_item_product_data_model.freezed.dart';

@freezed
class SectionItemProductDataModel with _$SectionItemProductDataModel {
  const SectionItemProductDataModel._();
  factory SectionItemProductDataModel({
    required String n,
    required String u,
  }) = _SectionItemProductDataModel;
}
