import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_vision_check_data_model.freezed.dart';

@freezed
class AppointmentVisionCheckDataModel with _$AppointmentVisionCheckDataModel {
  const AppointmentVisionCheckDataModel._();
  factory AppointmentVisionCheckDataModel({
    required String name,
    required String date,
    required String time,
    required String r,
    required String e,
    required String errorMessage,
  }) = _AppointmentVisionCheckDataModel;
}
