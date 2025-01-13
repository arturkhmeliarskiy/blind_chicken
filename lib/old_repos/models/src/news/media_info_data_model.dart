import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'media_info_data_model.freezed.dart';

@freezed
class MediaInfoDataModel with _$MediaInfoDataModel {
  const MediaInfoDataModel._();
  factory MediaInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required List<MediaInfoItemDataModel> list,
    required bool isViewed,
  }) = _MediaInfoDataModel;
}
