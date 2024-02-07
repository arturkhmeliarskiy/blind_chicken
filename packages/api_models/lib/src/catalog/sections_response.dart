import 'package:api_models/src/catalog/next_response.dart';
import 'package:api_models/src/catalog/prev_response.dart';
import 'package:api_models/src/catalog/this_response.dart';
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
    List<dynamic>? listPrev,
    List<dynamic>? listNext,
  }) = _SectionsResponse;
  factory SectionsResponse.fromJson(Map<String, dynamic> json) => _$SectionsResponseFromJson(json);
}
