part of '../remote_repository.dart';

abstract class _RepositoryLocations {
  Future<Either<ErrorResponse?, List<Country>?>> getCountries();

  Future<Either<ErrorResponse?, List<City>?>> getCities(
    String countryId,
    String search,
  );
}

class RemoteRepositoryLocations implements _RepositoryLocations {
  RemoteRepositoryLocations._privateConstructor({
    required this.dio,
    required this.localRepository,
  });

  static RemoteRepositoryLocations createInstance({required Dio dio, required LocalRepository localRepository}) {
    return RemoteRepositoryLocations._privateConstructor(dio: dio, localRepository: localRepository);
  }

  final Dio dio;
  final LocalRepository localRepository;

  @override
  Future<Either<ErrorResponse?, List<Country>?>> getCountries() async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final response = await dio.get(
        '${Env.baseUrl}/location/getCountries',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(
        response.toString(),
        name: 'Body $currentMethod',
      );
      logging('end', stackTrace: StackTrace.current);
      List<Country> countries = Countries.fromJson(response.data).items;
      return Right(countries);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse responseError = ErrorResponse.fromJson(e.response?.data);
        logging(responseError.toString(), stackTrace: StackTrace.current);
        return Left(responseError);
      } else {
        return const Left(null);
      }
    } catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      return const Left(null);
    }
  }

  @override
  Future<Either<ErrorResponse?, List<City>?>> getCities(
    String countryId,
    String search,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    String? accessToken = await localRepository.getAccessToken();
    try {
      logging('start\n${accessToken ?? ''}\ncountryId: $countryId', stackTrace: StackTrace.current);
      String url = '${Env.baseUrl}/location/getCities';
      var response = await dio.get(
        url,
        queryParameters: {
          "countryId": countryId,
          "q": search,
        },
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');
      List<City> cities = Cities.fromJson(response.data).city;
      logging('end', stackTrace: StackTrace.current);
      return Right(cities);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse responseError = ErrorResponse.fromJson(e.response?.data);
        logging(responseError.toString(), stackTrace: StackTrace.current);
        return Left(responseError);
      } else {
        return const Left(null);
      }
    } catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      return const Left(null);
    }
  }
}
