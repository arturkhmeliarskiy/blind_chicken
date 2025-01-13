part of 'search_location_bloc.dart';

@freezed
class SearchLocationEvent with _$SearchLocationEvent {
  const factory SearchLocationEvent.searchQuery({
    required String contentType,
    String? query,
    String? cityId,
    String? streetId,
    int? withParent,
    int? limit,
    int? offset,
  }) = SearchQuerySearchLocationEvent;
  const factory SearchLocationEvent.selectedAddress({
    required String zipcode,
    required int sum,
    required String cityId,
  }) = SelectedAddressLocationEvent;
}
