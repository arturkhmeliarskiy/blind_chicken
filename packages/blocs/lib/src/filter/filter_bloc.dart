import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final CatalogRepository _catalogRepository;

  FilterBloc(
    this._catalogRepository,
  ) : super(const FilterState.init()) {
    on<InitFilterEvent>(_init);
  }

  Future<void> _init(
    InitFilterEvent event,
    Emitter<FilterState> emit,
  ) async {
    final filter = await _catalogRepository.getFilters();
    emit(
      FilterState.preloadDataCompleted(
        filter: filter,
      ),
    );
  }
}
