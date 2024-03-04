import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_location_info_response.freezed.dart';
part 'search_location_info_response.g.dart';

@freezed
class SearchLocationInfoResponse with _$SearchLocationInfoResponse {
  const SearchLocationInfoResponse._();
  factory SearchLocationInfoResponse({
    String? id,
    String? name,
    int? zip,
    String? type,
    String? typeShort,
    String? okato,
    String? contentType,
    String? guid,
    String? ifnsfl,
    String? ifnsul,
    String? oktmo,
    String? parentGuid,
    String? cadnum,
  }) = _SearchLocationInfoResponse;
  factory SearchLocationInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchLocationInfoResponseFromJson(json);
}
