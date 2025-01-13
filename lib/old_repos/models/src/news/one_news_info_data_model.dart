import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'one_news_info_data_model.freezed.dart';

@freezed
class OneNewsInfoDataModel with _$OneNewsInfoDataModel {
  const OneNewsInfoDataModel._();
  factory OneNewsInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required NewsInfoItemDataModel data,
    required bool isViewed,
  }) = _OneNewsInfoDataModel;
}
