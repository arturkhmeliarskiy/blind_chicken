import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_notification_data_model.freezed.dart';

@freezed
class PushNotificationDataModel with _$PushNotificationDataModel {
  const PushNotificationDataModel._();
  factory PushNotificationDataModel({
    required String r,
    required String e,
  }) = _PushNotificationDataModel;
}
