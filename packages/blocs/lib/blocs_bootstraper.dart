import 'package:blocs/blocs.dart';
import 'package:blocs/src/search/search_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';

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
      ),
    )
    ..registerFactory(
      () => OrderBloc(),
    )
    ..registerFactory(
      () => YandexMapBloc(),
    )
    ..registerFactory(
      () => AccountBloc(),
    )
    ..registerFactory(
      () => SearchBloc(
        getIt.get<CatalogRepository>(),
      ),
    );
}
