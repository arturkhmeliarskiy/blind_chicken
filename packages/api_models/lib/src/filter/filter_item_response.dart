import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_item_response.freezed.dart';
part 'filter_item_response.g.dart';

@freezed
class FilterItemResponse with _$FilterItemResponse {
  const FilterItemResponse._();
  factory FilterItemResponse({
    int? id,
    String? value,
  }) = _FilterItemResponse;
  factory FilterItemResponse.fromJson(Map<String, dynamic> json) =>
      _$FilterItemResponseFromJson(json);
}
