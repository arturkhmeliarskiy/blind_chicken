part of '../remote_repository.dart';

abstract class _RepositoryProducts {
  Future<Either<ErrorResponse?, Products?>> getProducts({
    required String storeId,
    String? categoryId,
    String? search,
    int? offset,
    int? limit,

    ///filter properties
    String? enabled,
    String? productSortOrder,
    String? priceFrom,
    String? priceTo,
    String? basePriceFrom,
    String? basePriceTo,
    String? markupFrom,
    String? markupTo,
    Map? attrs,
  });

  Future<Either<ErrorResponse?, Product?>> createProduct({
    required String storeId,
    required String fileBase64,
  });

  Future<Either<ErrorResponse?, Unit>> deleteProduct({
    required String storeId,
    required String productId,
  });

  Future<Either<ErrorResponse?, Product>> updateProduct({
    required String storeId,
    required ProductDto productDto,
    bool? forceTraceId,
  });

  Future<Either<ErrorResponse?, Unit>> deleteDemoProducts({
    required Store store,
  });

  Future<Either<ErrorResponse?, Product>> cloneProduct({
    required String storeId,
    required String productId,
  });

  Future<Either<ErrorResponse?, ProductDetailsInfo>> getProductDetailsInfo({
    required String storeId,
    required String productId,
  });

  Future<Either<ErrorResponse?, Products>> addProductToCategory({
    required String storeId,
    required String categoryId,
    required String productId,
    required bool status,
  });

  Future<Either<ErrorResponse?, ProductCategories>> getProductCategories({
    required String storeId,
    String? categoryId,
  });

  Future<Either<ErrorResponse?, ProductCategories>> updateProductCategories({
    required String storeId,
    required List<CategoryDto> list,
  });

  Future<Either<ErrorResponse?, CategoryItem>> createProductCategory({
    required String storeId,
    required NewCategoryItemDto item,
  });

  Future<Either<ErrorResponse?, ProductProperties?>> getProductProperties(
    String storeId, {
    String? productId,
    String? filter,
  });

  Future<Either<ErrorResponse?, ProductProperties?>> updateProductProperties({
    required String storeId,
    required List<AttributesSortDto> list,
  });

  Future<Either<ErrorResponse?, ProductProperties?>> createProductProperties({
    required String storeId,
    required AttributesSortDto item,
  });

  Future<Either<ErrorResponse?, AttributeChooses?>> getAttributeChooses(
    String storeId,
    String attributeId,
  );

  Future<Either<ErrorResponse?, AttributeChooses?>> getSystemAttributeChooses(
    String storeId,
    String systemName,
    String type,
  );

  Future<Either<ErrorResponse?, TextAttributeChooses?>> getTextAttributeChooses({
    required String storeId,
    String? systemName,
    String? attributeId,
    String? search,
  });

  Future<Either<ErrorResponse?, AttributeChooses?>> updateAttributeChooses({
    required String storeId,
    required String systemName,
    required String attributeId,
    required List<AttributesChoicesSortDto> list,
  });

  Future<Either<ErrorResponse?, AttributeChooses?>> createAttributeChooses({
    required String storeId,
    required String attributeSystemName,
    required String attributeId,
    required AttributesChoicesSortDto item,
  });
}

class RemoteRepositoryProducts implements _RepositoryProducts {
  RemoteRepositoryProducts._privateConstructor({required this.dio});

  static RemoteRepositoryProducts createInstance({required Dio dio}) {
    return RemoteRepositoryProducts._privateConstructor(dio: dio);
  }

  final Dio dio;

  @override
  Future<Either<ErrorResponse?, Products?>> getProducts({
    required String storeId,
    String? categoryId,
    String? search,
    int? offset,
    int? limit,

    ///filter properties
    String? enabled,
    String? productSortOrder,
    String? priceFrom,
    String? priceTo,
    String? basePriceFrom,
    String? basePriceTo,
    String? markupFrom,
    String? markupTo,
    Map? attrs,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Map<String, dynamic> queryParameters = {
        'productSortOrder': productSortOrder ?? 'new',
        if (categoryId != null) 'categoryId': categoryId,
        if (search != null) 'q': search,
        if (offset != null) 'offset': offset,
        if (enabled != null) 'enabled': enabled,
        if (priceFrom != null) 'priceFrom': priceFrom,
        if (priceTo != null) 'priceTo': priceTo,
        if (basePriceFrom != null) 'basePriceFrom': basePriceFrom,
        if (basePriceTo != null) 'basePriceTo': basePriceTo,
        if (markupFrom != null) 'markupFrom': markupFrom,
        if (markupTo != null) 'markupTo': markupTo,
        if (attrs != null) 'attrs': attrs,
        if (limit != null) 'limit': limit,
      };

      String url = '/store/$storeId/products';
      Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      Products products = Products.fromJson(response.data);
      logging('end', stackTrace: StackTrace.current);

      return Right(products);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Product?>> createProduct({
    required String storeId,
    required String fileBase64,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      if (fileBase64.isNullOrEmpty) {
        return const Right(null);
      }
      Response response = await dio.post(
        '${Env.baseUrl}/store/$storeId/products',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "mediaFile": [
            {
              "type": "image",
              "value": fileBase64,
              "main": true,
            }
          ]
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      Product product = Product.fromJson(response.data['product']);

      logging('end', stackTrace: StackTrace.current);

      return Right(product);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Product>> updateProduct({
    required String storeId,
    required ProductDto productDto,
    bool? forceTraceId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      logging(productDto.toRawJson(), name: 'Send $currentMethod');

      Map<String, dynamic> data = {
        "productId": productDto.productId,
        if (productDto.name != null) "name": productDto.name,
        if (productDto.description != null) "description": productDto.description,
        if (productDto.sku != null) "sku": productDto.sku,
        if (productDto.sort != null) "sort": productDto.sort,
        if (productDto.quantityMin != null) "quantityMin": productDto.quantityMin,
        if (productDto.unitId != null) "unitId": productDto.unitId,
        if (productDto.unit != null) "unit": productDto.unit,
        if (productDto.brandId != null) "brandId": productDto.brandId,
        if (productDto.brand != null) "brand": productDto.brand,
        if (productDto.barcode != null) "barcode": productDto.barcode,
        if (productDto.price != null) "price": productDto.price,
        if (productDto.basePrice != null) "basePrice": productDto.basePrice,
        if (productDto.enabled != null) "enabled": productDto.enabled,
        if (productDto.hasTraceId != null || forceTraceId == true) "hasTraceId": productDto.hasTraceId,
        if (productDto.media != null) "mediaFile": productDto.media,
        if (productDto.attributes != null && productDto.attributes!.isNotEmpty) "attributes": productDto.attributes,
        if (productDto.options != null && productDto.options!.isNotEmpty) "options": productDto.options,
      };

      Response response = await dio.put(
        '${Env.baseUrl}/store/$storeId/products/${productDto.productId}',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: data,
      );

      logging(response.toString(), name: 'Body $currentMethod');

      Product product = Product.fromJson(response.data['product']);

      logging('end', stackTrace: StackTrace.current);

      return Right(product);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Unit>> deleteProduct({
    required String storeId,
    required String productId,
  }) async {
    try {
      logging('start', stackTrace: StackTrace.current);
      await dio.delete('${Env.baseUrl}/store/$storeId/products/$productId');

      logging('end', stackTrace: StackTrace.current);
      return const Right(unit);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Unit>> deleteDemoProducts({
    required Store store,
  }) async {
    StoreTask? task;
    for (var item in store.tasks) {
      if (item.code == 'demo') {
        task = item;
      }
    }
    if (task != null) {
      try {
        logging('start\n${store.generalInfo.storeId}', stackTrace: StackTrace.current);
        await dio.put(
          '${Env.baseUrl}/store/${store.generalInfo.storeId}/task',
          data: {"taskId": task.taskId, "complete": 1},
        );
        logging('end', stackTrace: StackTrace.current);
        return const Right(unit);
      } on DioException catch (e, s) {
        logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        if (e.response != null) {
          ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
          logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
          return Left(errorResponse);
        } else {
          return const Left(null);
        }
      } catch (e, s) {
        logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return const Left(null);
      }
    }
    return const Left(null);
  }

  @override
  Future<Either<ErrorResponse?, Product>> cloneProduct({
    required String storeId,
    required String productId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.get(
        '${Env.baseUrl}/store/$storeId/products/$productId/clone',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      Product item = Product.fromJson(response.data['product']);

      logging('end', stackTrace: StackTrace.current);
      return Right(item);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, ProductDetailsInfo>> getProductDetailsInfo({
    required String storeId,
    required String productId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.get(
        '${Env.baseUrl}/store/$storeId/products/$productId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      ProductDetailsInfo item = ProductDetailsInfo.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(item);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, Products>> addProductToCategory({
    required String storeId,
    required String categoryId,
    required String productId,
    required bool status,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.put(
        '${Env.baseUrl}/store/$storeId/products',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "categoryId": categoryId,
          "products": [
            {
              "productId": productId,
              "active": status,
            }
          ]
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      Products storeResponse = Products.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, ProductCategories>> getProductCategories({
    required String storeId,
    String? categoryId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      String url = '${Env.baseUrl}/store/$storeId/categories';
      var response = await dio.get(
        url,
        queryParameters: {
          "categoryId": categoryId,
        },
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      ProductCategories storeResponse = ProductCategories.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, ProductCategories>> updateProductCategories({
    required String storeId,
    required List<CategoryDto> list,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.put(
        '${Env.baseUrl}/store/$storeId/categories',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: list,
      );
      logging(response.toString(), name: 'Body $currentMethod');
      ProductCategories storeResponse = ProductCategories.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, CategoryItem>> createProductCategory({
    required String storeId,
    required NewCategoryItemDto item,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.post(
        '${Env.baseUrl}/store/$storeId/categories',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: item,
      );
      logging(response.toString(), name: 'Body $currentMethod');
      CategoryItem categoryItem = CategoryItem.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(categoryItem);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, ProductProperties?>> getProductProperties(
    String storeId, {
    String? productId,
    String? filter,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    String url = '${Env.baseUrl}/store/$storeId/attributes';

    try {
      Response response = await dio.get(
        url,
        queryParameters: {
          if (productId != null) "productId": productId,
          if (filter != null) "filter": filter,
        },
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      ProductProperties productProperties = ProductProperties.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);

      return Right(productProperties);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, ProductProperties?>> updateProductProperties({
    required String storeId,
    required List<AttributesSortDto> list,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.put('${Env.baseUrl}/store/$storeId/attributes',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          data: list);
      logging(response.toString(), name: 'Body $currentMethod');
      ProductProperties storeResponse = ProductProperties.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, ProductProperties?>> createProductProperties({
    required String storeId,
    required AttributesSortDto item,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.post('${Env.baseUrl}/store/$storeId/attributes',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          data: {
            'type': item.type,
            'attributeName': item.attributeName,
          });
      logging(response.toString(), name: 'Body $currentMethod');
      ProductProperties storeResponse = ProductProperties.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, AttributeChooses?>> getAttributeChooses(
    String storeId,
    String attributeId,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      logging('storeId $storeId', stackTrace: StackTrace.current);
      logging('attributeId $attributeId', stackTrace: StackTrace.current);
      var response = await dio.get(
        '${Env.baseUrl}/store/$storeId/attributes/choices?attributeId=$attributeId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      AttributeChooses storeResponse = AttributeChooses.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, AttributeChooses?>> getSystemAttributeChooses(
    String storeId,
    String systemName,
    String type,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      logging('storeId $storeId', stackTrace: StackTrace.current);
      logging('systemName $systemName', stackTrace: StackTrace.current);
      logging('type $type', stackTrace: StackTrace.current);
      var response = await dio.get(
        '${Env.baseUrl}/store/$storeId/attributes/choices',
        queryParameters: {
          'systemName': systemName,
          'type': type,
        },
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      AttributeChooses storeResponse = AttributeChooses.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, TextAttributeChooses?>> getTextAttributeChooses({
    required String storeId,
    String? systemName,
    String? attributeId,
    String? search,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      logging('storeId $storeId', stackTrace: StackTrace.current);
      logging('systemName $systemName', stackTrace: StackTrace.current);

      String url = '${Env.baseUrl}/store/$storeId/attributes/value';
      var response = await dio.get(
        url,
        queryParameters: {
          if (systemName != null) "systemName": systemName,
          if (attributeId != null) "attributeId": attributeId,
          if (search != null) "q": search
        },
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      TextAttributeChooses storeResponse = TextAttributeChooses.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, AttributeChooses?>> updateAttributeChooses({
    required String storeId,
    required String systemName,
    required String attributeId,
    required List<AttributesChoicesSortDto> list,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      logging('storeId $storeId', stackTrace: StackTrace.current);
      var queryParams = {
        'systemName': systemName,
        'attributeId': attributeId,
      };
      var response = await dio.put(
        '${Env.baseUrl}/store/$storeId/attributes/choices',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: queryParams,
        data: list,
      );
      logging(response.toString(), name: 'Body $currentMethod');
      AttributeChooses storeResponse = AttributeChooses.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
  Future<Either<ErrorResponse?, AttributeChooses?>> createAttributeChooses({
    required String storeId,
    required String attributeSystemName,
    required String attributeId,
    required AttributesChoicesSortDto item,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      logging('storeId $storeId', stackTrace: StackTrace.current);
      var queryParams = {
        'systemName': attributeSystemName,
        'attributeId': attributeId,
      };
      var response = await dio.post(
        '${Env.baseUrl}/store/$storeId/attributes/choices',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: queryParams,
        data: {
          'attributeId': item.attributeId,
          'name': item.name,
          if (item.special != null) 'special': item.special,
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      AttributeChooses storeResponse = AttributeChooses.fromJson(response.data);
      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
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
