import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'news_info_data_model.freezed.dart';

@freezed
class NewsInfoDataModel with _$NewsInfoDataModel {
  const NewsInfoDataModel._();
  factory NewsInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required List<NewsInfoItemDataModel> list,
    required bool isViewed,
  }) = _NewsInfoDataModel;
}
