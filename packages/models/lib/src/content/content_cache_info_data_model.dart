import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/content/index.dart';

part 'content_cache_info_data_model.freezed.dart';

@freezed
class ContentCacheInfoDataModel with _$ContentCacheInfoDataModel {
  const ContentCacheInfoDataModel._();
  factory ContentCacheInfoDataModel({
    required String screen,
    required String dateTime,
    required List<String> content,
    required List<String> images,
    required List<ContentCacheInfoItemDataModel> info,
  }) = _ContentCacheInfoDataModel;
}
