import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/services/services.dart';

class AppStoreInfoRepository {
  final AppStoreInfoService _appStoreInfoService;
  AppStoreInfoRepository(this._appStoreInfoService);

  Future<AppStoreInfoDataModel> checkiOSVersion() async {
    final result = await _appStoreInfoService.checkiOSVersion();
    return AppStoreInfoDataModel(
      appStroreVersion: result.appStroreVersion ?? '',
      errorMessage: result.errorMessage ?? '',
    );
  }

  Future<AppStoreInfoDataModel> checkAndroidVersion() async {
    final result = await _appStoreInfoService.checkAndroidVersion();
    return AppStoreInfoDataModel(
      appStroreVersion: result.appStroreVersion ?? '',
      errorMessage: result.errorMessage ?? '',
    );
  }
}
