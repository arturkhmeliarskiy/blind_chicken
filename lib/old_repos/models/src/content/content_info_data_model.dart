import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'content_info_data_model.freezed.dart';

@freezed
class ContentInfoDataModel with _$ContentInfoDataModel {
  const ContentInfoDataModel._();
  factory ContentInfoDataModel({
    required String dateTime,
    required List<String> content,
    required List<String> images,
    required List<ContentInfoItemDataModel> info,
    required String r,
    required String e,
    required String errorMessage,
  }) = _ContentInfoDataModel;
}
