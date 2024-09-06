import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'top_banner_bloc.freezed.dart';
part 'top_banner_event.dart';
part 'top_banner_state.dart';

class TopBannerBloc extends Bloc<TopBannerEvent, TopBannerState> {
  final CatalogRepository _catalogRepository;
  final AuthRepository _authRepository;

  TopBannerBloc(
    this._catalogRepository,
    this._authRepository,
  ) : super(const TopBannerState.init()) {
    on<TopBannerEvent>(
      (event, emit) => event.map<Future<void>>(
        preloadData: (event) => _preloadData(event, emit),
      ),
    );
  }

  Future<void> _preloadData(
    PreloadDataTopBannerEvent event,
    Emitter<TopBannerState> emit,
  ) async {
    emit(const TopBannerState.load());

    final result = await _catalogRepository.postTopBanner();
    await _authRepository.checkDiscount();

    emit(
      TopBannerState.preloadData(
        info: result,
      ),
    );
  }
}
