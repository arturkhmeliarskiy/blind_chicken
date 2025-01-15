import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_store_info_data_model.freezed.dart';

@freezed
class AppStoreInfoDataModel with _$AppStoreInfoDataModel {
  const AppStoreInfoDataModel._();
  factory AppStoreInfoDataModel({
    required String appStroreVersion,
    required String errorMessage,
  }) = _AppStoreInfoDataModel;
}
