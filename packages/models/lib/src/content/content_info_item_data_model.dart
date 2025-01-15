import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_info_item_data_model.freezed.dart';

@freezed
class ContentInfoItemDataModel with _$ContentInfoItemDataModel {
  const ContentInfoItemDataModel._();
  factory ContentInfoItemDataModel({
    required String id,
    required String title,
    required String mobileImage,
    required String tabletImage,
    required String url,
  }) = _ContentInfoItemDataModel;
}
