import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_item_response.freezed.dart';
part 'section_item_response.g.dart';

@freezed
class SectionItemResponse with _$SectionItemResponse {
  const SectionItemResponse._();
  factory SectionItemResponse({
    String? name,
    String? value,
  }) = _SectionItemResponse;
  factory SectionItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SectionItemResponseFromJson(json);
}
