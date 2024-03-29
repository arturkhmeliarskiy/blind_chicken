import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_response.freezed.dart';
part 'push_notification_response.g.dart';

@freezed
class PushNotificationResponse with _$PushNotificationResponse {
  const PushNotificationResponse._();
  factory PushNotificationResponse({
    String? r,
    String? e,
  }) = _PushNotificationResponse;
  factory PushNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationResponseFromJson(json);
}
