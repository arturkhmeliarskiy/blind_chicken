import 'package:blind_chicken/old_repos/api_models/src/news/notification_info_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_info_response.freezed.dart';
part 'notification_info_response.g.dart';

@freezed
class NotificationInfoResponse with _$NotificationInfoResponse {
  const NotificationInfoResponse._();
  factory NotificationInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    List<NotificationInfoItemResponse>? list,
    @JsonKey(name: 'is_viewed') bool? isViewed,
  }) = _NotificationInfoResponse;
  factory NotificationInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationInfoResponseFromJson(json);
}
