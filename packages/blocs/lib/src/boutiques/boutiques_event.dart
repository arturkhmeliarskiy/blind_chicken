part of 'boutiques_bloc.dart';

@freezed
class BoutiquesEvent with _$BoutiquesEvent {
  const factory BoutiquesEvent.preloadData() = InitBoutiquesEvent;
  const factory BoutiquesEvent.getInfoBoutique({
    required String uid,
    String? path,
    bool? isNotification,
    String? messageId,
  }) = GetInfoBoutiquesEvent;
}
