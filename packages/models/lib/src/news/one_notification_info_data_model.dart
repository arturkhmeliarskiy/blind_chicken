import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'one_notification_info_data_model.freezed.dart';

@freezed
class OneNotificationInfoDataModel with _$OneNotificationInfoDataModel {
  const OneNotificationInfoDataModel._();
  factory OneNotificationInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required NotificationInfoItemDataModel data,
  }) = _OneNotificationInfoDataModel;
}
