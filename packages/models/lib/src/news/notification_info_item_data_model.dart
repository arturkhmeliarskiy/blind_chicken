import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'notification_info_item_data_model.freezed.dart';

@freezed
class NotificationInfoItemDataModel with _$NotificationInfoItemDataModel {
  const NotificationInfoItemDataModel._();
  factory NotificationInfoItemDataModel({
    required String id,
    required String title,
    required String createAt,
    required List<NewsSliderImageItemDataModel> images,
    required String video,
    required String typeVideo,
    required String videoImage,
    required String typeMedia,
    required String description,
    required String titleButton,
    required String typePath,
    required String path,
    required String code,
    required String sort,
    required String filterSelect,
    required String uidStore,
    required double videoImageHeight,
    required double videoImageWeight,
    required bool isViewed,
  }) = _NotificationInfoItemDataModel;
}
