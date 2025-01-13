import 'package:blind_chicken/old_repos/api_models/src/catalog/next_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/prev_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/section_item_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/this_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sections_response.freezed.dart';
part 'sections_response.g.dart';

@freezed
class SectionsResponse with _$SectionsResponse {
  const SectionsResponse._();
  factory SectionsResponse({
    PrevResponse? prev,
    @JsonKey(name: 'this') ThisResponse? thiss,
    NextResponse? next,
    List<SectionItemResponse>? listPrev,
    List<SectionItemResponse>? listNext,
    List<SectionItemResponse>? listThis,
  }) = _SectionsResponse;
  factory SectionsResponse.fromJson(Map<String, dynamic> json) => _$SectionsResponseFromJson(json);
}
