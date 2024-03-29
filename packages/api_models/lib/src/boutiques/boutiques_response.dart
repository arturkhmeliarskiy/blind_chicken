import 'package:api_models/src/boutiques/boutiques_data_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutiques_response.freezed.dart';
part 'boutiques_response.g.dart';

@freezed
class BoutiquesResponse with _$BoutiquesResponse {
  const BoutiquesResponse._();
  factory BoutiquesResponse({
    List<BoutiquesDataResponse>? data,
    String? errorMessage,
  }) = _BoutiquesResponse;
  factory BoutiquesResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiquesResponseFromJson(json);
}
