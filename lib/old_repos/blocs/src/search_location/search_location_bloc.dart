import 'package:blind_chicken/core/utils/logging.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';

part 'search_location_bloc.freezed.dart';
part 'search_location_event.dart';
part 'search_location_state.dart';

class SearchLocationBloc extends Bloc<SearchLocationEvent, SearchLocationState> {
  final LocationRepository _locationRepository;

  SearchLocationBloc(
    this._locationRepository,
  ) : super(const SearchLocationState.init()) {
    on<SearchLocationEvent>(
      (event, emit) => event.map<Future<void>>(
        searchQuery: (event) => _searchQuery(event, emit),
        selectedAddress: (event) => _selectedAddress(event, emit),
      ),
    );
  }

  Future<void> _searchQuery(
    SearchQuerySearchLocationEvent event,
    Emitter<SearchLocationState> emit,
  ) async {
    emit(const SearchLocationState.load());
    final searchResult = await _locationRepository.searchLocation(
      contentType: event.contentType,
      query: event.query,
      cityId: event.cityId,
      streetId: event.streetId,
      withParent: event.withParent,
      limit: event.limit,
      offset: event.offset,
    );

    emit(
      SearchLocationState.preloadData(
        searchResult: searchResult,
      ),
    );
  }

  Future<void> _selectedAddress(
    SelectedAddressLocationEvent event,
    Emitter<SearchLocationState> emit,
  ) async {
    final result = await _locationRepository.calculationCostDelivery(
      cityId: event.cityId,
      zipcode: event.zipcode,
      sum: event.sum,
    );
    logging(result.price.toString(), stackTrace: StackTrace.current);
    emit(
      SearchLocationState.selectInfo(
        price: result.price,
        cityId: event.cityId,
      ),
    );
  }
}
