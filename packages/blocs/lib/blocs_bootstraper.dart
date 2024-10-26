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
        getIt.get<AppMetricaEcommerceService>(),
      ),
    )
    ..registerFactory(
      () => BoutiquesBloc(
        getIt.get<BoutiquesRepository>(),
        getIt.get<UpdateDataService>(),
        getIt.get<StoreVersionAppRepository>(),
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
        getIt.get<UpdateDataService>(),
        getIt.get<AppMetricaEcommerceService>(),
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
        getIt.get<StoreVersionAppRepository>(),
        getIt.get<PushNotificationRepository>(),
        getIt.get<AppMetricaEcommerceService>(),
        getIt.get<FilterService>(),
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
        getIt.get<FileService>(),
        getIt.get<UpdateDataService>(),
        getIt.get<AppMetricaEcommerceService>(),
      ),
    )
    ..registerFactory(
      () => SearchBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<BasketRepository>(),
        getIt.get<UpdateDataService>(),
        getIt.get<AppMetricaEcommerceService>(),
      ),
    )
    ..registerFactory(
      () => BrandBloc(
        getIt.get<CatalogRepository>(),
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
        getIt.get<GiftCardRepository>(),
        getIt.get<StoreVersionAppRepository>(),
        getIt.get<AppMetricaEcommerceService>(),
      ),
    )
    ..registerFactory(
      () => InternetConnectionBloc(),
    )
    ..registerFactory(
      () => NewsBloc(
        getIt.get<NewsRepository>(),
        getIt.get<StoreVersionAppRepository>(),
        getIt.get<ImageService>(),
      ),
    )
    ..registerFactory(
      () => TopBannerBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<AuthRepository>(),
      ),
    )
    ..registerFactory(
      () => AppointmentBloc(
        getIt.get<BoutiquesRepository>(),
        getIt.get<UpdateDataService>(),
        getIt.get<SharedPreferencesService>(),
      ),
    );
}
