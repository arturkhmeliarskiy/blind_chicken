import 'package:api_models/src/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_notification_info_response.freezed.dart';
part 'one_notification_info_response.g.dart';

@freezed
class OneNotificationInfoResponse with _$OneNotificationInfoResponse {
  const OneNotificationInfoResponse._();
  factory OneNotificationInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    NotificationInfoItemResponse? data,
  }) = _OneNotificationInfoResponse;
  factory OneNotificationInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$OneNotificationInfoResponseFromJson(json);
}
