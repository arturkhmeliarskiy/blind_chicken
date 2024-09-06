import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'filter_notication_data_model.freezed.dart';

@freezed
class FilterNotifcationDataModel with _$FilterNotifcationDataModel {
  const FilterNotifcationDataModel._();
  factory FilterNotifcationDataModel({
    required String url,
    required List<FilterNotifcationItemDataModel> filter,
    required List<FilterNotifcationItemDataModel> fullFilter,
  }) = _FilterNotifcationDataModel;
}
