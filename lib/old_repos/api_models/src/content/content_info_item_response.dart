import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_info_item_response.freezed.dart';
part 'content_info_item_response.g.dart';

@freezed
class ContentInfoItemResponse with _$ContentInfoItemResponse {
  const ContentInfoItemResponse._();
  factory ContentInfoItemResponse({
    String? id,
    String? title,
    @JsonKey(name: 'mobile_image') String? mobileImage,
    @JsonKey(name: 'tablet_image') String? tabletImage,
    String? url,
  }) = _ContentInfoItemResponse;
  factory ContentInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ContentInfoItemResponseFromJson(json);
}
