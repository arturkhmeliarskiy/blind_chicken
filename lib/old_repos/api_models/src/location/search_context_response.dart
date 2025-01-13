import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_context_response.freezed.dart';
part 'search_context_response.g.dart';

@freezed
class SearchContextResponse with _$SearchContextResponse {
  const SearchContextResponse._();
  factory SearchContextResponse({
    String? contentType,
    String? cityId,
    String? streetId,
    String? query,
  }) = _SearchContextResponse;
  factory SearchContextResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchContextResponseFromJson(json);
}
