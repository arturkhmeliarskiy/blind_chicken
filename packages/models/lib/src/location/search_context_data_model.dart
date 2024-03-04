import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_context_data_model.freezed.dart';

@freezed
class SearchContextDataModel with _$SearchContextDataModel {
  const SearchContextDataModel._();
  factory SearchContextDataModel({
    required String contentType,
    required String cityId,
    required String streetId,
    required String query,
  }) = _SearchContextDataModel;
}
