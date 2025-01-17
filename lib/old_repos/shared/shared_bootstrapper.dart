import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
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
    ..registerSingleton(
      NewsNotificationsService(),
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
    )
    ..registerSingleton(
      AppMetricaEcommerceService(),
    )
    ..registerSingleton(
      FilterService(),
    )
    ..registerSingleton(
      ImageService(),
    )
    ..registerSingleton(
      BadgeService(),
    );
  await getIt.get<SharedPreferencesService>().initialize();
  await getIt.get<ProductsFavouritesService>().initFavouritesProductsHave();
  await getIt.get<ProductsShoppingCartService>().initProductsShoppingCartHave();
  await getIt.get<NewsNotificationsService>().initNewsNotificationsHave();
}
