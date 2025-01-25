import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'content_cache_info_item_data_model.freezed.dart';

@freezed
class ContentCacheInfoItemDataModel with _$ContentCacheInfoItemDataModel {
  const ContentCacheInfoItemDataModel._();
  factory ContentCacheInfoItemDataModel({
    required String id,
    required String title,
    required Uint8List mobileImage,
    required Uint8List tabletImage,
    required String url,
  }) = _ContentCacheInfoItemDataModel;
}
