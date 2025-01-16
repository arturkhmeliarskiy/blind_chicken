part of '../remote_repository.dart';

abstract class _RepositoryOffers {
  Future<Either<ErrorResponse?, ProductDetailsInfo?>> createOffer({
    required String storeId,
    required NewOffer newOffer,
  });

  Future<Either<ErrorResponse?, ProductDetailsInfo?>> updateOffer({
    required String storeId,
    required UpdateOffer updateDto,
  });
}

class RemoteRepositoryOffers implements _RepositoryOffers {
  RemoteRepositoryOffers._privateConstructor({required this.dio});

  static RemoteRepositoryOffers createInstance({required Dio dio}) {
    return RemoteRepositoryOffers._privateConstructor(dio: dio);
  }

  final Dio dio;

  @override
  Future<Either<ErrorResponse?, ProductDetailsInfo?>> createOffer({
    required String storeId,
    required NewOffer newOffer,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      var response = await dio.post(
        '${Env.baseUrl}/store/$storeId/offers',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: newOffer,
      );
      logging(response.toString(), name: 'Body $currentMethod');
      ProductDetailsInfo storeResponse = ProductDetailsInfo.fromJson(response.data);
      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
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

  @override
  Future<Either<ErrorResponse?, ProductDetailsInfo?>> updateOffer({
    required String storeId,
    required UpdateOffer updateDto,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      var response = await dio.put(
        '${Env.baseUrl}/store/$storeId/offers',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: updateDto,
      );
      logging(response.toString(), name: 'Body $currentMethod');
      ProductDetailsInfo storeResponse = ProductDetailsInfo.fromJson(response.data);
      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
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
