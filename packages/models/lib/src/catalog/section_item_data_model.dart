import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_item_data_model.freezed.dart';

@freezed
class SectionItemDataModel with _$SectionItemDataModel {
  const SectionItemDataModel._();
  factory SectionItemDataModel({
    required String name,
    required String value,
  }) = _SectionItemDataModel;
}
