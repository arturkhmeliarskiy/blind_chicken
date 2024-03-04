import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'boutiques_bloc.freezed.dart';
part 'boutiques_event.dart';
part 'boutiques_state.dart';

class BoutiquesBloc extends Bloc<BoutiquesEvent, BoutiquesState> {
  final BoutiquesRepository _boutiquesRepository;
  final UpdateDataService _updateDataService;

  BoutiquesBloc(
    this._boutiquesRepository,
    this._updateDataService,
  ) : super(const BoutiquesState.init()) {
    on<BoutiquesEvent>((event, emit) => event.map<Future<void>>(
          preloadData: (event) => _init(event, emit),
          getInfoBoutique: (event) => _getInfoBoutique(event, emit),
        ));
  }

  Future<void> _init(
    InitBoutiquesEvent event,
    Emitter<BoutiquesState> emit,
  ) async {
    final boutiques = await _boutiquesRepository.getBoutiques();
    _updateDataService.boutiques = boutiques.data;
    emit(
      BoutiquesState.preloadDataCompleted(
        boutiques: boutiques.data,
      ),
    );
  }

  Future<void> _getInfoBoutique(
    GetInfoBoutiquesEvent event,
    Emitter<BoutiquesState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const BoutiquesState.load());
      final detailsBoutique = await _boutiquesRepository.getInfoBoutique(
        uid: event.uid,
      );
      final boutiqueInfo = await _boutiquesRepository.getInfoBoutiqueDetail(
        uid: event.uid,
      );
      emit(
        initState.copyWith(
          boutiqueDetails: detailsBoutique.data,
          boutiqueInfo: boutiqueInfo.category,
        ),
      );
    });
  }
}
