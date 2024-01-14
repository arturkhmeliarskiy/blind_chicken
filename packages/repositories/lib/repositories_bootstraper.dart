import 'package:get_it/get_it.dart';
import 'package:repositories/src/index.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

Future<void> initRepositories(GetIt getIt) async {
  getIt
    ..registerFactory(
      () => CatalogRepository(
        getIt.get<CatalogService>(),
        getIt.get<ConverterService>(),
        getIt.get<DeviceInfoService>(),
        getIt.get<ProductsFavouritesService>(),
      ),
    )
    ..registerFactory(
      () => BoutiquesRepository(
        getIt.get<BoutiquesService>(),
      ),
    );
}
