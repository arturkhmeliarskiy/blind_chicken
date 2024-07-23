import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_version_app_info_data_model.freezed.dart';

@freezed
class StoreVersionAppInfoDataModel with _$StoreVersionAppInfoDataModel {
  const StoreVersionAppInfoDataModel._();
  factory StoreVersionAppInfoDataModel({
    required String ios,
    required String android,
  }) = _StoreVersionAppInfoDataModel;
}
