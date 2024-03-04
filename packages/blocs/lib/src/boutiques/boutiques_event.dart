part of 'boutiques_bloc.dart';

@freezed
class BoutiquesEvent with _$BoutiquesEvent {
  const factory BoutiquesEvent.preloadData() = InitBoutiquesEvent;
  const factory BoutiquesEvent.getInfoBoutique({
    required String uid,
  }) = GetInfoBoutiquesEvent;
}
