import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_product_video_data_model.freezed.dart';

@freezed
class DetailProductVideoDataModel with _$DetailProductVideoDataModel {
  const DetailProductVideoDataModel._();
  factory DetailProductVideoDataModel({
    required String v,
    required String i,
  }) = _DetailProductVideoDataModel;
}
