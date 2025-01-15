import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/filter/filter_info_data_model.dart';

part 'filter_data_model.freezed.dart';

@freezed
class FilterDataModel with _$FilterDataModel {
  const FilterDataModel._();
  factory FilterDataModel({
    required List<FilterInfoDataModel> filter,
  }) = _FilterDataModel;
}
