import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/catalog/index.dart';

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
