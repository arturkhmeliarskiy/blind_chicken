part of 'doctor_appointment_bloc.dart';

@freezed
class AppointmentEvent with _$AppointmentEvent {
  const factory AppointmentEvent.preloadData() = InitAppointmentEvent;
  const factory AppointmentEvent.selectBoutique({
    required BoutiqueDataModel selectBoutique,
  }) = SelectBoutiqueAppointmentEvent;
  const factory AppointmentEvent.selectDateTime({
    required DateTime selectDateTime,
  }) = SelectDateTimeAppointmentEvent;
  const factory AppointmentEvent.selectTime({
    required DateTime selectTime,
  }) = SelectTimeAppointmentEvent;
  const factory AppointmentEvent.createDoctorAppointment() =
      CreateDoctorAppointmentAppointmentEvent;
}
