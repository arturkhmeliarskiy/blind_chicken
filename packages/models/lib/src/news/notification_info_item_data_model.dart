import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_info_item_data_model.freezed.dart';

@freezed
class NotificationInfoItemDataModel with _$NotificationInfoItemDataModel {
  const NotificationInfoItemDataModel._();
  factory NotificationInfoItemDataModel({
    required String id,
    required String title,
    required String createAt,
    required List<String> images,
    required String video,
    required String typeMedia,
    required String description,
    required String titleButton,
    required String typePath,
    required String path,
    required String code,
    required String sort,
    required String filterSelect,
    required String uidStore,
    required bool isViewed,
  }) = _NotificationInfoItemDataModel;
}
