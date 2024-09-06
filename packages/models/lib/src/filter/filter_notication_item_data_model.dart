import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_notication_item_data_model.freezed.dart';

@freezed
class FilterNotifcationItemDataModel with _$FilterNotifcationItemDataModel {
  const FilterNotifcationItemDataModel._();
  factory FilterNotifcationItemDataModel({
    required String value,
    required String typeFilter,
  }) = _FilterNotifcationItemDataModel;
}
