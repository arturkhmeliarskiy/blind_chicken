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
      ),
    )
    ..registerFactory(
      () => BoutiquesBloc(
        getIt.get<BoutiquesRepository>(),
      ),
    )
    ..registerFactory(
      () => LoginBloc(),
    )
    ..registerFactory(
      () => FavouritesBloc(
        getIt.get<CatalogRepository>(),
      ),
    )
    ..registerFactory(
      () => CatalogBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<ConstatntsInfo>(),
        getIt.get<UpdateDataService>(),
      ),
    )
    ..registerFactory(
      () => OrderBloc(),
    )
    ..registerFactory(
      () => YandexMapBloc(),
    )
    ..registerFactory(
      () => AccountBloc(
        getIt.get<CatalogRepository>(),
        getIt.get<ConstatntsInfo>(),
      ),
    )
    ..registerFactory(
      () => SearchBloc(
        getIt.get<CatalogRepository>(),
      ),
    )
    ..registerFactory(
      () => BrandBloc(
        getIt.get<ConstatntsInfo>(),
      ),
    );
}
