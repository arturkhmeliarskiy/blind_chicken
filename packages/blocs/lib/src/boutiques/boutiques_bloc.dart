import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'boutiques_bloc.freezed.dart';
part 'boutiques_event.dart';
part 'boutiques_state.dart';

class BoutiquesBloc extends Bloc<BoutiquesEvent, BoutiquesState> {
  final BoutiquesRepository _boutiquesRepository;

  BoutiquesBloc(
    this._boutiquesRepository,
  ) : super(const BoutiquesState.init()) {
    on<InitBoutiquesEvent>(_init);
  }

  Future<void> _init(
    InitBoutiquesEvent event,
    Emitter<BoutiquesState> emit,
  ) async {
    final boutiques = await _boutiquesRepository.getBoutiques();
    emit(
      BoutiquesState.preloadDataCompleted(
        boutiques: boutiques,
      ),
    );
  }
}
