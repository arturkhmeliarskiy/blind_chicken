import 'package:api_models/src/auth/captha_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_vision_check_response.freezed.dart';
part 'appointment_vision_check_response.g.dart';

@freezed
class AppointmentVisionCheckResponse with _$AppointmentVisionCheckResponse {
  const AppointmentVisionCheckResponse._();
  factory AppointmentVisionCheckResponse({
    String? name,
    String? date,
    String? time,
    String? r,
    String? e,
    String? errorMessage,
  }) = _AppointmentVisionCheckResponse;
  factory AppointmentVisionCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentVisionCheckResponseFromJson(json);
}
