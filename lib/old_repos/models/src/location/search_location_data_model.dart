import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/location/search_context_data_model.dart';
import 'package:blind_chicken/old_repos/models/src/location/search_location_info_data_model.dart';

part 'search_location_data_model.freezed.dart';

@freezed
class SearchLocationDataModel with _$SearchLocationDataModel {
  const SearchLocationDataModel._();
  factory SearchLocationDataModel({
    required SearchContextDataModel searchContext,
    required List<SearchLocationInfoDataModel> result,
  }) = _SearchLocationDataModel;
}
