import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_info_item_data_model.freezed.dart';

@freezed
class MediaInfoItemDataModel with _$MediaInfoItemDataModel {
  const MediaInfoItemDataModel._();
  factory MediaInfoItemDataModel({
    required String id,
    required String title,
    required String createAt,
    required List<String> images,
    required String video,
    required String typeVideo,
    required String videoImage,
    required String typeMedia,
    required String description,
    required String titleButton,
    required String typePath,
    required String path,
    required String code,
    required String sort,
    required String filterSelect,
    required String uidStore,
    required int numberViews,
    required bool isViewed,
  }) = _MediaInfoItemDataModel;
}
