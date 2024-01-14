import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_item_data_model.freezed.dart';

@freezed
class FilterItemDataModel with _$FilterItemDataModel {
  const FilterItemDataModel._();
  factory FilterItemDataModel({
    required int id,
    required String value,
  }) = _FilterItemDataModel;
}
