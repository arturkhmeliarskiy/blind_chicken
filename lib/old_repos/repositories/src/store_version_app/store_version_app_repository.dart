import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/services/services.dart';

class StoreVersionAppRepository {
  final StoreVersionAppService _storeVersionAppService;
  StoreVersionAppRepository(this._storeVersionAppService);

  Future<StoreVersionAppDataModel> getStoreVersion() async {
    final result = await _storeVersionAppService.getStoreVersion() ?? StoreVersionAppResponse();
    return StoreVersionAppDataModel(
      r: result.r ?? '',
      e: result.e ?? '',
      version: StoreVersionAppInfoDataModel(
        android: result.version?.android ?? '',
        ios: result.version?.ios ?? '',
      ),
    );
  }
}
