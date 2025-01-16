part of '../remote_repository.dart';

class Example {
  static Example fromJson(String json) => Example();
}

abstract class _RepositoryExample {
  Future<Either<ErrorResponse?, List<Example>?>> getCountries();
}

class RemoteRepositoryExample implements _RepositoryExample {
  RemoteRepositoryExample._privateConstructor({
    required this.dio,
    required this.localRepository,
  });

  static RemoteRepositoryExample createInstance({required Dio dio, required LocalRepository localRepository}) {
    return RemoteRepositoryExample._privateConstructor(dio: dio, localRepository: localRepository);
  }

  final Dio dio;
  final LocalRepository localRepository;

  @override
  Future<Either<ErrorResponse?, List<Example>?>> getCountries() async {
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
      List<Example> countries = [Example.fromJson(response.data)];
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
}
