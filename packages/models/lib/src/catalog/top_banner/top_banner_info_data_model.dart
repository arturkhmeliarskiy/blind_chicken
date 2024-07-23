import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_banner_info_data_model.freezed.dart';

@freezed
class TopBannerInfoDataModel with _$TopBannerInfoDataModel {
  const TopBannerInfoDataModel._();
  factory TopBannerInfoDataModel({
    required String title,
    required String colorText,
    required String colorBackground,
    required String code,
    required String type,
    required String section,
    required String uid,
    required String idNews,
  }) = _TopBannerInfoDataModel;
}
