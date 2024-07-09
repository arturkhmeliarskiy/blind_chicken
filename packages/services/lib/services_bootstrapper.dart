import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

Future<void> initServices(GetIt getIt) async {
  final Dio dio = Dio();
  getIt
    ..registerFactory(
      () => CatalogService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => BoutiquesService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
      ),
    )
    ..registerFactory(
      () => AuthService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => BasketService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => FavouritesService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => LocationService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
      ),
    )
    ..registerFactory(
      () => OrdersService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => AppStoreInfoService(
        dio,
      ),
    )
    ..registerFactory(
      () => PushNotificationService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => NewsService(
        dio,
        getIt.get<DeviceInfoService>(),
        getIt.get<ConverterService>(),
      ),
    );
}
