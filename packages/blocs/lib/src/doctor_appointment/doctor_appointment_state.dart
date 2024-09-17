part of 'doctor_appointment_bloc.dart';

@freezed
class AppointmentState with _$AppointmentState {
  const factory AppointmentState.init() = InitAppointmentState;
  const factory AppointmentState.load() = LoadingAppointmentState;
  const factory AppointmentState.authorization() = AuthorizationAppointmentState;
  const factory AppointmentState.recordCreatedSuccessfully({
    required String name,
    required String date,
    required String time,
  }) = RecordCreatedSuccessfullyAppointmentState;
  const factory AppointmentState.preloadDataCompleted({
    required List<BoutiqueDataModel> boutiques,
    required BoutiqueDataModel selectBoutique,
    required Map<int, List<DateTime>> time,
    required DateTime selectDateTime,
  }) = PreloadDataCompletedAppointmentState;
}
