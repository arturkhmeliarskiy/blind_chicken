import 'package:blocs/blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

Future<void> initBloc(GetIt getIt) async {
  getIt
    ..registerFactory(
      () => FilterBloc(
        getIt.get<CatalogRepository>(),
      ),
    )
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
      ),
    )
    ..registerFactory(
      () => LoginBloc(
        getIt.get<AuthRepository>(),
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
      ),
    )
    ..registerFactory(
      () => FavouritesBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<UpdateDataService>(),
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
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerFactory(
      () => SearchBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<SharedPreferencesService>(),
        getIt.get<FavouritesRepository>(),
        getIt.get<UpdateDataService>(),
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
      ),
    )
    ..registerFactory(
      () => InternetConnectionBloc(),
    );
}
