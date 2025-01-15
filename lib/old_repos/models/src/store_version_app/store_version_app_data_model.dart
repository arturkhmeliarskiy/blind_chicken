import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/store_version_app/index.dart';

part 'store_version_app_data_model.freezed.dart';

@freezed
class StoreVersionAppDataModel with _$StoreVersionAppDataModel {
  const StoreVersionAppDataModel._();
  factory StoreVersionAppDataModel({
    required String r,
    required String e,
    required StoreVersionAppInfoDataModel version,
  }) = _StoreVersionAppDataModel;
}
