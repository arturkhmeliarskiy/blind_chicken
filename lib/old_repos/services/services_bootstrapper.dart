import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/services/services.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

Future<void> initServices(GetIt getIt) async {
  final Dio dio = Dio();
  getIt
    ..registerFactory(
      () => CatalogService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => BoutiquesService(
        dio,
        getIt.get<SharedPreferencesService>(),
        getIt.get<ConverterService>(),
      ),
    )
    ..registerFactory(
      () => AuthService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => BasketService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => FavouritesService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => LocationService(
        dio,
        getIt.get<SharedPreferencesService>(),
        getIt.get<ConverterService>(),
      ),
    )
    ..registerFactory(
      () => OrdersService(
        dio,
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
        getIt.get<SharedPreferencesService>(),
        getIt.get<ConverterService>(),
      ),
    )
    ..registerFactory(
      () => StoreVersionAppService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => GiftCardService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => ContentService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => ErrorAnalyzerService(
        dio,
        getIt.get<ConverterService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    );
}
