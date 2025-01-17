import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/services/services.dart';

class PushNotificationRepository {
  final PushNotificationService _notificationService;
  PushNotificationRepository(this._notificationService);

  Future<PushNotificationDataModel> postNotificationInfo({
    required String event,
  }) async {
    final result = await _notificationService.postNotificationInfo(
          event: event,
        ) ??
        PushNotificationResponse();
    return PushNotificationDataModel(
      r: result.r ?? '',
      e: result.e ?? '',
    );
  }
}
