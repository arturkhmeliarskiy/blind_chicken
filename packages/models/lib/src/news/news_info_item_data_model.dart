import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_info_item_data_model.freezed.dart';

@freezed
class NewsInfoItemDataModel with _$NewsInfoItemDataModel {
  const NewsInfoItemDataModel._();
  factory NewsInfoItemDataModel({
    required String id,
    required String title,
    required String createAt,
    required List<String> images,
    required String video,
    required String announcement,
    required String typeMedia,
    required String description,
    required String titleButton,
    required String typePath,
    required String path,
    required String code,
    required String sort,
    required String filterSelect,
    required String uidStore,
    required String typeVideo,
    required String videoImage,
    required double videoImageHeight,
    required double videoImageWeight,
    required int numberViews,
    required bool isViewed,
  }) = _NewsInfoItemDataModel;
}
