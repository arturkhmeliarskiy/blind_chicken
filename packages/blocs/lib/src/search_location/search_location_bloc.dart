import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'search_location_bloc.freezed.dart';
part 'search_location_event.dart';
part 'search_location_state.dart';

class SearchLocationBloc extends Bloc<SearchLocationEvent, SearchLocationState> {
  final LocationRepository _locationRepository;

  SearchLocationBloc(
    this._locationRepository,
  ) : super(const SearchLocationState.init()) {
    on<SearchLocationEvent>(
      (event, emit) => event.map(
        searchQuery: (event) => _searchQuery(event, emit),
        selectedAddress: (event) => _selectedAddress(event, emit),
      ),
    );
  }

  Future<void> _searchQuery(
    SearchQuerySearchLocationEvent event,
    Emitter<SearchLocationState> emit,
  ) async {
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
        price: 0,
      ),
    );
  }

  Future<void> _selectedAddress(
    SelectedAddressLocationEvent event,
    Emitter<SearchLocationState> emit,
  ) async {
    await state.mapOrNull(preloadData: (initState) async {
      emit(const SearchLocationState.load());
      final result = await _locationRepository.calculationCostDelivery(
        cityId: event.cityId,
        zipcode: event.zipcode,
        sum: event.sum,
      );
      log(result.price.toString());
      emit(
        SearchLocationState.preloadData(
          searchResult: initState.searchResult,
          price: result.price,
        ),
      );
    });
  }
}
