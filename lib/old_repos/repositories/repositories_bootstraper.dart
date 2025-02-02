import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/repositories/src/index.dart';
import 'package:blind_chicken/old_repos/services/services.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

Future<void> initRepositories(GetIt getIt) async {
  getIt
    ..registerFactory(
      () => CatalogRepository(
        getIt.get<CatalogService>(),
        getIt.get<ProductsFavouritesService>(),
        getIt.get<ProductsShoppingCartService>(),
        getIt.get<BasketRepository>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => BoutiquesRepository(
        getIt.get<BoutiquesService>(),
      ),
    )
    ..registerFactory(
      () => AuthRepository(
        getIt.get<AuthService>(),
      ),
    )
    ..registerFactory(
      () => FavouritesRepository(
        getIt.get<FavouritesService>(),
        getIt.get<CatalogRepository>(),
        getIt.get<BasketRepository>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => BasketRepository(
        getIt.get<BasketService>(),
      ),
    )
    ..registerFactory(() => LocationRepository(
          getIt.get<LocationService>(),
        ))
    ..registerFactory(
      () => OrdersRepository(
        getIt.get<OrdersService>(),
      ),
    )
    ..registerFactory(
      () => AppStoreInfoRepository(
        getIt.get<AppStoreInfoService>(),
      ),
    )
    ..registerFactory(
      () => PushNotificationRepository(
        getIt.get<PushNotificationService>(),
      ),
    )
    ..registerFactory(
      () => NewsRepository(
        getIt.get<NewsService>(),
        getIt.get<NewsNotificationsService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => StoreVersionAppRepository(
        getIt.get<StoreVersionAppService>(),
      ),
    )
    ..registerFactory(
      () => GiftCardRepository(
        getIt.get<GiftCardService>(),
      ),
    )
    ..registerFactory(
      () => ContentRepository(
        getIt.get<ContentService>(),
        getIt.get<CacheInfoService>(),
        getIt.get<ImageService>(),
      ),
    )
    ..registerFactory(
      () => ErrorAnalyzerRepository(
        getIt.get<ErrorAnalyzerService>(),
      ),
    );
}
