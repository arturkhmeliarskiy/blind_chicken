import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:services/services.dart';

Future<void> initServices(GetIt getIt) async {
  final Dio dio = Dio();
  getIt
    ..registerFactory(
      () => CatalogService(dio),
    )
    ..registerFactory(
      () => BoutiquesService(dio),
    );
}
