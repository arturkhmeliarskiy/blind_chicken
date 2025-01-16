part of '../remote_repository.dart';

abstract class _RepositoryOrders {
  Future<Either<ErrorResponse?, List<order.OrderItem>>> getAbandonedOrders(
    String storeId,
  );

  Future<Either<ErrorResponse?, List<OrderStatus>>> getStatusesOrders();

  Future<Either<ErrorResponse?, order.OrderItem>> getOrder(
    String orderId,
  );

  Future<Either<ErrorResponse?, order.OrderItem>> changeStatus(
    String orderId,
    Map<String, dynamic> data,
  );

  Future<Either<ErrorResponse?, order.OrderItem>> updateOrder(
    String orderId,
    Map<String, dynamic> data,
  );

  Future<Either<ErrorResponse?, OrdersResponse>> getOrdersByStatus(
    String? search,
    String statusId, {
    int? offset,
    int? limit,
  });

  Future<Either<ErrorResponse?, OrderHistory>> getOrderHistory(
    String orderId,
  );

  Future<Either<ErrorResponse?, Unit>> updateOrderCartItems(
    List<CartItemDto> list,
  );

  Future<Either<ErrorResponse?, Unit>> cancelOrder(
    String orderId,
  );

  Future<Either<ErrorResponse?, Unit>> cancelOrderShippingOffer({
    required String shippingOfferId,
  });

  Future<Either<ErrorResponse?, List<DeliveryMethodModel>>> getDeliveryListForOrder({
    required String storeId,
    required String orderId,
  });

  Future<Either<ErrorResponse?, SingleDeliveryModel>> getOrderDeliveryDetails({
    required String deliveryId,
    required String orderId,
  });

  Future<Either<ErrorResponse?, CalculationResponseDto>> calculateShippingCost({
    required String orderId,
    required Map<String, dynamic> data,
  });

  Future<Either<ErrorResponse?, Unit>> createDeliveryOrder({
    required String orderId,
    required Map<String, dynamic> data,
  });

  Future<Either<ErrorResponse?, ShippingOfferDeliveryStatusDto>> getOrderDeliveryStatus({
    required String shippingOfferId,
  });

  Future<Either<ErrorResponse?, Unit>> createFakeOrder();
}

class RemoteRepositoryOrders implements _RepositoryOrders {
  RemoteRepositoryOrders._privateConstructor({required this.dio, required this.localRepository});

  static RemoteRepositoryOrders createInstance({required Dio dio, required LocalRepository localRepository}) {
    return RemoteRepositoryOrders._privateConstructor(dio: dio, localRepository: localRepository);
  }

  final Dio dio;
  final LocalRepository localRepository;

  String get storeId => localRepository.store.getStore().generalInfo.storeId;

  @override
  Future<Either<ErrorResponse?, List<order.OrderItem>>> getAbandonedOrders(
    String storeId,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      var response = await dio.get(
        '/orders/?storeId=$storeId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'draft': true,
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      List<order.OrderItem> orders = Orders.fromJson(response.data).items;
      logging('end', stackTrace: StackTrace.current);
      return Right(orders);
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
  Future<Either<ErrorResponse?, List<OrderStatus>>> getStatusesOrders() async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      var response = await dio.get('/orders/status',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          queryParameters: {'storeId': storeId});
      logging(response.toString(), name: 'Body $currentMethod');
      List<OrderStatus> statuses = [];
      for (var item in response.data) {
        statuses.add(OrderStatus.fromJson(item));
      }
      logging('end', stackTrace: StackTrace.current);
      return Right(statuses);
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
  Future<Either<ErrorResponse?, order.OrderItem>> getOrder(
    String orderId,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final result = await dio.get(
        '/orders/$orderId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'storeId': storeId,
        },
      );
      logging(result.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      return Right(order.OrderItem.fromJson(result.data));
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, order.OrderItem>> changeStatus(
    String orderId,
    Map<String, dynamic> data,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final result = await dio.put(
        '/orders/$orderId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {'storeId': storeId, 'orderId': orderId},
        data: data,
      );
      logging(result.toString(), name: 'Body $currentMethod');

      final orderChanged = order.OrderItem.fromJson(result.data);
      logging('end', stackTrace: StackTrace.current);

      return Right(orderChanged);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, order.OrderItem>> updateOrder(
    String orderId,
    Map<String, dynamic> data,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final result = await dio.put(
        '/orders/$orderId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: data,
        queryParameters: {'storeId': storeId, 'orderId': orderId},
      );
      logging(result.toString(), name: 'Body $currentMethod');

      logging('end', stackTrace: StackTrace.current);
      return Right(order.OrderItem.fromJson(result.data));
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, OrdersResponse>> getOrdersByStatus(
    String? search,
    String statusId, {
    int? offset,
    int? limit,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final result = await dio.get(
        '/orders',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'q': search,
          'statusId': statusId,
          if (limit != null) 'limit': limit,
          if (offset != null) 'offset': offset,
          'storeId': storeId,
        },
      );

      logging(result.toString(), name: 'Body $currentMethod');
      final ordersResponse = OrdersResponse.fromJson(result.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(ordersResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, OrderHistory>> getOrderHistory(
    String orderId,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final result = await dio.get(
        '/orders/$orderId/log',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {'storeId': storeId},
      );

      logging(result.toString(), name: 'Body $currentMethod');
      final orderHistory = OrderHistory.fromJson(result.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(orderHistory);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Unit>> updateOrderCartItems(
    List<CartItemDto> list,
  ) async {
    try {
      logging('start', stackTrace: StackTrace.current);
      await dio.put(
        '/orders/cartItems',
        data: list.map((item) => item.toJson()).toList(),
      );
      logging('end', stackTrace: StackTrace.current);
      return const Right(unit);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Unit>> cancelOrder(
    String orderId,
  ) async {
    try {
      logging('start', stackTrace: StackTrace.current);
      await dio.put('/orders/$orderId/cancel', queryParameters: {'storeId': storeId, 'orderId': orderId});

      logging('end', stackTrace: StackTrace.current);
      return const Right(unit);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, List<DeliveryMethodModel>>> getDeliveryListForOrder({
    required String storeId,
    required String orderId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('store id is $storeId and order id is $orderId', stackTrace: StackTrace.current);
      final response = await dio.get(
        '/shipping/store/$storeId/order/$orderId/delivery',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');
      final deliveriesList = response.data['shippingDeliveries'] as List;
      if (deliveriesList.isNotEmpty) {
        final deliveries = deliveriesList.map((data) => DeliveryMethodModel.fromJson(data)).toList(growable: false);
        return right(deliveries);
      }

      logging('end', stackTrace: StackTrace.current);
      return const Right([]);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, CalculationResponseDto>> calculateShippingCost({
    required String orderId,
    required Map<String, dynamic> data,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final result = await dio.post(
        '/shipping/store/$storeId/order/$orderId/offer/calculate',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: data,
      );
      logging(result.toString(), name: 'Body $currentMethod');
      final calculationResponse = result.data;
      CalculationResponseDto calculationResult = CalculationResponseDto.fromJson(calculationResponse);
      logging('end', stackTrace: StackTrace.current);
      return Right(calculationResult);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Unit>> createDeliveryOrder({
    required String orderId,
    required Map<String, dynamic> data,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final response = await dio.post(
        '/shipping/store/$storeId/order/$orderId/offer',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: data,
      );

      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      return const Right(unit);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);

      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Unit>> createFakeOrder() async {
    try {
      logging('start', stackTrace: StackTrace.current);
      // final response = await dio.post(
      //   '/shipping/store/$storeId/order/$orderId/offer',
      //   data: data,
      // );

      // ShippingOfferDto offer = ShippingOfferDto.fromJson(response.data);
      //
      //logging(response.toString(), name: 'Body $currentMethod');

      await Future.delayed(const Duration(seconds: 1));

      logging('end', stackTrace: StackTrace.current);

      return const Right(unit);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);

      if (e.response != null && e.response!.statusCode != 200) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, SingleDeliveryModel>> getOrderDeliveryDetails({
    required String deliveryId,
    required String orderId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final response = await dio.get(
        '/shipping/store/$storeId/order/$orderId/delivery/$deliveryId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      if (response.statusCode != 200) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(response.data);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
      }

      final deliveriesList = response.data;
      SingleDeliveryModel deliveryProperties = SingleDeliveryModel.fromJson(deliveriesList);

      logging('end', stackTrace: StackTrace.current);

      return Right(deliveryProperties);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);

      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, ShippingOfferDeliveryStatusDto>> getOrderDeliveryStatus({
    required String shippingOfferId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final response = await dio.get(
        '/shipping/store/$storeId/order/offer/$shippingOfferId/status',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      if (response.statusCode != 200) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(response.data);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
      }

      final status = ShippingOfferDeliveryStatusDto.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);

      return Right(status);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);

      if (e.response != null && e.response!.statusCode != 200) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Unit>> cancelOrderShippingOffer({
    required String shippingOfferId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      final response = await dio.post(
        '/shipping/store/$storeId/order/offer/$shippingOfferId/cancel',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      if (response.statusCode != 200) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(response.data);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
      }

      logging('end', stackTrace: StackTrace.current);

      return const Right(unit);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);

      if (e.response != null && e.response!.statusCode != 200) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current,logLevel: LogLevel.error);
        return Left(errorResponse);
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
