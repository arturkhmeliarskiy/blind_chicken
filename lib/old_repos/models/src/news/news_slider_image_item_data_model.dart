import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_slider_image_item_data_model.freezed.dart';

@freezed
class NewsSliderImageItemDataModel with _$NewsSliderImageItemDataModel {
  const NewsSliderImageItemDataModel._();
  factory NewsSliderImageItemDataModel({
    required String imageUrl,
    required double imageHeight,
    required double imageWeight,
  }) = _NewsSliderImageItemDataModel;
}
