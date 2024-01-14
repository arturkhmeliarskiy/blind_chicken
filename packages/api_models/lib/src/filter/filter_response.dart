import 'package:api_models/src/filter/filter_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_response.freezed.dart';
part 'filter_response.g.dart';

@freezed
class FilterResponse with _$FilterResponse {
  const FilterResponse._();
  factory FilterResponse({
    List<FilterInfoResponse>? filter,
  }) = _FilterResponse;
  factory FilterResponse.fromJson(Map<String, dynamic> json) => _$FilterResponseFromJson(json);
}
