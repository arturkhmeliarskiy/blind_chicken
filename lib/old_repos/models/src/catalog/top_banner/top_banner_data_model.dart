import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/catalog/top_banner/index.dart';

part 'top_banner_data_model.freezed.dart';

@freezed
class TopBannerDataModel with _$TopBannerDataModel {
  const TopBannerDataModel._();
  factory TopBannerDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required TopBannerInfoDataModel data,
  }) = _TopBannerDataModel;
}
