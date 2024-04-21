import 'package:blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

Future<void> initBloc(GetIt getIt) async {
  getIt
    ..registerFactory(
      () => ShoppingCartBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<BasketRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<UpdateDataService>(),
        getIt.get<BoutiquesRepository>(),
      ),
    )
    ..registerFactory(
      () => BoutiquesBloc(
        getIt.get<BoutiquesRepository>(),
        getIt.get<UpdateDataService>(),
        getIt.get<AppStoreInfoRepository>(),
      ),
    )
    ..registerFactory(
      () => LoginBloc(
        getIt.get<AuthRepository>(),
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<PushNotificationRepository>(),
      ),
    )
    ..registerFactory(
      () => FavouritesBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<BasketRepository>(),
      ),
    )
    ..registerFactory(
      () => CatalogBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<ConstatntsInfo>(),
        getIt.get<UpdateDataService>(),
        getIt.get<BoutiquesRepository>(),
        getIt.get<BasketRepository>(),
        getIt.get<AppStoreInfoRepository>(),
        getIt.get<DeviceInfoService>(),
        getIt.get<PushNotificationRepository>(),
      ),
    )
    ..registerFactory(
      () => YandexMapBloc(
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerFactory(
      () => AccountBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<AuthRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<OrdersRepository>(),
        getIt.get<BasketRepository>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<PushNotificationRepository>(),
      ),
    )
    ..registerFactory(
      () => SearchBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<BasketRepository>(),
      ),
    )
    ..registerFactory(
      () => BrandBloc(
        getIt.get<ConstatntsInfo>(),
      ),
    )
    ..registerFactory(
      () => SearchLocationBloc(
        getIt.get<LocationRepository>(),
      ),
    )
    ..registerFactory(
      () => GiftCardBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<UpdateDataService>(),
        getIt.get<AppStoreInfoRepository>(),
      ),
    )
    ..registerFactory(
      () => InternetConnectionBloc(),
    );
}
