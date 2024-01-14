import 'package:api_models/src/filter/filter_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_info_response.freezed.dart';
part 'filter_info_response.g.dart';

@freezed
class FilterInfoResponse with _$FilterInfoResponse {
  const FilterInfoResponse._();
  factory FilterInfoResponse({
    String? id,
    String? title,
    bool? isSearch,
    List<FilterItemResponse>? items,
  }) = _FilterInfoResponse;
  factory FilterInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$FilterInfoResponseFromJson(json);
}
