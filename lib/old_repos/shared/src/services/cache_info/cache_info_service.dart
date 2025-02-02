import 'package:blind_chicken/old_repos/shared/src/services/cache_info/cache_info_data_model.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class CacheInfoService {
  initCacheInfoHave() async {
    final applicatonDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive
      ..init(applicatonDocumentDir.path)
      ..registerAdapter(CacheInfoDataModelAdapter());
    await Hive.openBox<CacheInfoDataModel>('cache_info');
  }

  void addCacheInfo(CacheInfoDataModel info) {
    Hive.box<CacheInfoDataModel>('cache_info').put(info.screen, info);
  }

  List<CacheInfoDataModel> listCacheInfo() {
    final listCacheInfo = Hive.box<CacheInfoDataModel>('cache_info').values.toList();

    return listCacheInfo;
  }

  void deleteCacheInfo(int index) {
    Hive.box<CacheInfoDataModel>('cache_info').delete(index);
  }

  void putCacheInfo(int index, CacheInfoDataModel info) {
    Hive.box<CacheInfoDataModel>('cache_info').put(index, info);
  }

  void deleteAllCacheInfo() {
    Hive.box<CacheInfoDataModel>('cache_info').clear();
  }
}
