import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/catalog/index.dart';

part 'sections_data_model.freezed.dart';

@freezed
class SectionsDataModel with _$SectionsDataModel {
  const SectionsDataModel._();
  factory SectionsDataModel({
    required PrevDataModel prev,
    required ThisDataModel thiss,
    required NextDataModel next,
  }) = _SectionsDataModel;
}
