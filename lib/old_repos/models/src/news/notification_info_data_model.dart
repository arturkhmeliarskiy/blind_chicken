import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'notification_info_data_model.freezed.dart';

@freezed
class NotificationInfoDataModel with _$NotificationInfoDataModel {
  const NotificationInfoDataModel._();
  factory NotificationInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required List<NotificationInfoItemDataModel> list,
    required bool isViewed,
  }) = _NotificationInfoDataModel;
}
