import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:uuid/uuid.dart';

Future<void> initShared(GetIt getIt) async {
  var uuid = const Uuid();
  getIt
    ..registerFactory(
      () => ConverterService(),
    )
    ..registerFactory(
      () => FormatNumber(),
    )
    ..registerFactory(
      () => DeviceInfoService(uuid),
    )
    ..registerFactory(
      () => ProductsFavouritesService(),
    )
    ..registerFactory(
      () => ProductsShoppingCartService(),
    )
    ..registerFactory(
      () => ConstatntsInfo(),
    )
    ..registerSingleton(SharedPreferencesService())
    ..registerSingleton(
      UpdateDataService(),
    )
    ..registerSingleton(
      LocationMapService(),
    )
    ..registerSingleton(
      TimerService(),
    )
    ..registerSingleton(
      LaunchService(),
    )
    ..registerSingleton(
      FileService(),
    );
  await getIt.get<SharedPreferencesService>().initialize();
  await getIt.get<ProductsFavouritesService>().initFavouritesProductsHave();
  await getIt.get<ProductsShoppingCartService>().initProductsShoppingCartHave();
}
