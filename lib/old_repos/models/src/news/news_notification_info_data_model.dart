import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_notification_info_data_model.freezed.dart';

@freezed
class NewsNotificationInfoDataModel with _$NewsNotificationInfoDataModel {
  const NewsNotificationInfoDataModel._();
  factory NewsNotificationInfoDataModel({
    required String id,
    required String typeNews,
  }) = _NewsNotificationInfoDataModel;
}
