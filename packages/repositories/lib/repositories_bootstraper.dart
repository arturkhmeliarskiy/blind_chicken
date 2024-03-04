import 'package:get_it/get_it.dart';
import 'package:repositories/src/index.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

Future<void> initRepositories(GetIt getIt) async {
  getIt
    ..registerFactory(
      () => CatalogRepository(
        getIt.get<CatalogService>(),
        getIt.get<ProductsFavouritesService>(),
        getIt.get<ProductsShoppingCartService>(),
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
    );
}
