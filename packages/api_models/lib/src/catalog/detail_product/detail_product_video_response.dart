import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_product_video_response.freezed.dart';
part 'detail_product_video_response.g.dart';

@freezed
class DetailProductVideoResponse with _$DetailProductVideoResponse {
  const DetailProductVideoResponse._();
  factory DetailProductVideoResponse({
    String? v,
    String? i,
  }) = _DetailProductVideoResponse;
  factory DetailProductVideoResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailProductVideoResponseFromJson(json);
}
