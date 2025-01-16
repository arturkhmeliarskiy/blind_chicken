part of '../remote_repository.dart';

abstract class _RepositoryLanguage {
  Future<Either<ErrorResponse?, List<Language>>> getLanguages();
}

class RemoteRepositoryLanguages implements _RepositoryLanguage {
  RemoteRepositoryLanguages._privateConstructor({required this.dio});

  static RemoteRepositoryLanguages createInstance({required Dio dio}) {
    return RemoteRepositoryLanguages._privateConstructor(dio: dio);
  }

  final Dio dio;

  @override
  Future<Either<ErrorResponse?, List<Language>>> getLanguages() async {
    List<Language> languages = [];
    try {
      logging('start', stackTrace: StackTrace.current);
      var response = await dio.get(
        '${Env.baseUrl}/lang',
      );

      for (var item in response.data) {
        languages.add(Language.fromJson(item));
      }
      logging('end', stackTrace: StackTrace.current);
      return Right(languages);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse responseError = ErrorResponse.fromJson(e.response?.data);
        logging(responseError.toString(), stackTrace: StackTrace.current);
        return Left(responseError);
      } else {
        return const Left(null);
      }
    } catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      return const Left(null);
    }
  }
}
