import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/filter/filter_item_data_model.dart';

part 'filter_info_data_model.freezed.dart';

@freezed
class FilterInfoDataModel with _$FilterInfoDataModel {
  const FilterInfoDataModel._();
  factory FilterInfoDataModel({
    required String id,
    required String title,
    required bool isSearch,
    required List<FilterItemDataModel> items,
  }) = _FilterInfoDataModel;
}
