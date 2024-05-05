import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_location_info_data_model.freezed.dart';

@freezed
class SearchLocationInfoDataModel with _$SearchLocationInfoDataModel {
  const SearchLocationInfoDataModel._();
  factory SearchLocationInfoDataModel({
    required String id,
    required String name,
    required int zip,
    required String type,
    required String typeShort,
    required String okato,
    required String contentType,
    required String guid,
    required String ifnsfl,
    required String ifnsul,
    required String oktmo,
    required String parentGuid,
    required String cadnum,
    required List<SearchLocationInfoDataModel> parents,
  }) = _SearchLocationInfoDataModel;
}
