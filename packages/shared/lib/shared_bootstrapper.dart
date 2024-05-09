import 'package:device_info_plus/device_info_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';

Future<void> initShared(GetIt getIt) async {
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  getIt
    ..registerFactory(
      () => ConverterService(),
    )
    ..registerFactory(
      () => FormatNumber(),
    )
    ..registerFactory(
      () => DeviceInfoService(deviceInfoPlugin),
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
      FileService(),
    );
  await getIt.get<SharedPreferencesService>().initialize();
  await getIt.get<ProductsFavouritesService>().initFavouritesProductsHave();
  await getIt.get<ProductsShoppingCartService>().initProductsShoppingCartHave();
}
