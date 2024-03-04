import 'package:api_models/src/location/search_context_response.dart';
import 'package:api_models/src/location/search_location_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_location_response.freezed.dart';
part 'search_location_response.g.dart';

@freezed
class SearchLocationResponse with _$SearchLocationResponse {
  const SearchLocationResponse._();
  factory SearchLocationResponse({
    SearchContextResponse? searchContext,
    List<SearchLocationInfoResponse>? result,
  }) = _SearchLocationResponse;
  factory SearchLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchLocationResponseFromJson(json);
}
