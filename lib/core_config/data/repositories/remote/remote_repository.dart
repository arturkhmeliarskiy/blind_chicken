// ignore_for_file: library_private_types_in_public_api

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pimmer_app/app/presentation/screens/navigation/tabs/goods/inner_screens/old_goods/models/create_offer_request.dart';
import 'package:pimmer_app/core/utils/debug_overlay/log/log_event.dart';
import 'package:pimmer_app/core/utils/string_extensions.dart';
import 'package:pimmer_app/data/repositories/local/local_repository.dart';
import 'package:pimmer_app/domain/dto/auth_request.dart';
import 'package:pimmer_app/domain/enums/inport_type.dart';
import 'package:pimmer_app/env.dart';
import 'package:pimmer_app/features/orders/history_of_changes/domain/model/order_history_model.dart';
import 'package:pimmer_app/features/orders/orders_general_overview/domain/dto/orders_response_dto.dart';
import 'package:pimmer_app/features/settings/delivery_settings/domain/model/delivery_methods_model.dart';
import 'package:pimmer_app/features/settings/delivery_settings/domain/model/single_delivery_model.dart';
import 'package:pimmer_app/model/attribute_chooses.dart';
import 'package:pimmer_app/model/business_card.dart';
import 'package:pimmer_app/model/calculation_response_dto.dart';
import 'package:pimmer_app/model/cities.dart';
import 'package:pimmer_app/model/country.dart';
import 'package:pimmer_app/model/error_response.dart';
import 'package:pimmer_app/model/integration_fields.dart';
import 'package:pimmer_app/model/integration_settings_item.dart';
import 'package:pimmer_app/model/intervals.dart';
import 'package:pimmer_app/model/invite_code_response.dart';
import 'package:pimmer_app/model/items/integration_history_item.dart';
import 'package:pimmer_app/model/language.dart';
import 'package:pimmer_app/model/logo_display_options.dart';
import 'package:pimmer_app/model/order_statuses.dart';
import 'package:pimmer_app/model/orders.dart' as order;
import 'package:pimmer_app/model/orders.dart';
import 'package:pimmer_app/model/product_category.dart';
import 'package:pimmer_app/model/product_details_info.dart';
import 'package:pimmer_app/model/product_dto.dart';
import 'package:pimmer_app/model/product_properties.dart';
import 'package:pimmer_app/model/products.dart';
import 'package:pimmer_app/model/role.dart';
import 'package:pimmer_app/model/role_dto.dart';
import 'package:pimmer_app/model/shipping_offer_details_dto.dart';
import 'package:pimmer_app/model/store.dart';
import 'package:pimmer_app/model/store_dto.dart';
import 'package:pimmer_app/model/store_info.dart';
import 'package:pimmer_app/model/store_types.dart';
import 'package:pimmer_app/model/update_card_item.dart';
import 'package:pimmer_app/model/user.dart';
import 'package:pimmer_app/model/user_dto.dart';
import 'package:pimmer_app/model/zones.dart';
import 'package:pimmer_app/utils/custom_trace.dart';
import 'package:pimmer_app/utils/language_helper.dart';
import 'package:pimmer_app/utils/logging.dart';
import 'package:pimmer_app/utils/role_helper.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'remote_parts/remote_country.dart';
part 'remote_parts/remote_languages.dart';
part 'remote_parts/remote_offers.dart';
part 'remote_parts/remote_orders.dart';
part 'remote_parts/remote_products.dart';
part 'remote_parts/remote_role.dart';
part 'remote_parts/remote_store.dart';
part 'remote_parts/remote_user.dart';

class RemoteRepository {
  RemoteRepository({
    required this.dio,
    required this.localRepository,
    required this.packageInfo,
  })  : languages = RemoteRepositoryLanguages.createInstance(dio: dio),
        user = RemoteRepositoryUser.createInstance(dio: dio, localRepository: localRepository),
        store = RemoteRepositoryStore.createInstance(dio: dio, localRepository: localRepository),
        products = RemoteRepositoryProducts.createInstance(dio: dio),
        location = RemoteRepositoryLocations.createInstance(dio: dio, localRepository: localRepository),
        offers = RemoteRepositoryOffers.createInstance(dio: dio),
        orders = RemoteRepositoryOrders.createInstance(dio: dio, localRepository: localRepository),
        role = RemoteRepositoryRole.createInstance(dio: dio);

  final Dio dio;
  final LocalRepository localRepository;
  final PackageInfo packageInfo;

  final _RepositoryLanguage languages;
  final _RepositoryUser user;
  final _RepositoryStore store;
  final _RepositoryProducts products;
  final _RepositoryLocations location;
  final _RepositoryOffers offers;
  final _RepositoryOrders orders;
  final _RepositoryRole role;

  Future<Either<ErrorResponse?, List<PaymentSystemItem>?>> getPaymentSystems(String storeId) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.get(
        '${Env.baseUrl}/store/paymentSystems?storeId=$storeId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      logging(response.toString(), name: 'Body $currentMethod');
      List<PaymentSystemItem> paymentSystems = (response.data as List).map((item) {
        return PaymentSystemItem.fromJson(item);
      }).toList();
      logging('end', stackTrace: StackTrace.current);

      return Right(paymentSystems);
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

  Future<Either<ErrorResponse?, List<PaymentSystemItem>?>> updatePaymentSettingsFields(
    String storeId,
    String paySystemId,
    List<PaymentSettingField> paymentFields,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      List<Map<String, String?>?> list = paymentFields
          .map((item) {
            if (item.type == 'file' && (item.value.isEmpty || (item.fileBase64 ?? '').isNotEmpty)) {
              return {'code': item.code, 'value': item.fileBase64};
            } else if (item.type == 'dropdown' && item.value.isEmpty) {
              return {'code': item.code, 'value': '0'};
            } else if (item.value.isNotEmpty) {
              return {'code': item.code, 'value': item.value};
            } else {
              return null;
            }
          })
          .where((item) => item != null)
          .toList();

      logging(list.toString());

      Response response = await dio.put(
        '${Env.baseUrl}/store/paymentSystems?storeId=$storeId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          'paySystemId': paySystemId,
          'settings': list,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<PaymentSystemItem> paymentSystems =
          (response.data as List).map((item) => PaymentSystemItem.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(paymentSystems);
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

  Future<Either<ErrorResponse?, Contact?>> createContact({
    required String storeId,
    required ContactDto? contactDto,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.post(
        '${Env.baseUrl}/store/$storeId/info/contact',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: contactDto,
      );

      logging(response.toString(), name: 'Body $currentMethod');

      Contact? contact = Contact.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);

      return Right(contact);
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

  Future<Either<ErrorResponse?, List<Contact>?>> updateContacts({
    required String storeId,
    required List<ContactDto>? list,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.put(
        '${Env.baseUrl}/store/$storeId/info/contact',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: list,
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<Contact> contacts = (response.data as List).map((item) => Contact.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(contacts);
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

  Future<Either<ErrorResponse?, Unit>> hideVideo(String storeId, String videoId) async {
    try {
      logging('start $storeId', stackTrace: StackTrace.current);

      await dio.put(
        '${Env.baseUrl}/store/$storeId/hiddenVideo',
        data: {
          'videoId': videoId,
        },
      );

      logging('end', stackTrace: StackTrace.current);

      // Unit can be used to represent a "void" in a generic type
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

  Future<Either<ErrorResponse?, List<LogoDisplayOption>?>> getLogoDisplayOptions(String storeId) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.get(
        '${Env.baseUrl}/store/views',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'storeId': storeId,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<LogoDisplayOption> logoDisplayOptions =
          (response.data as List).map((item) => LogoDisplayOption.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(logoDisplayOptions);
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

  Future<Either<ErrorResponse?, List<IntegrationField>?>> getIntegrationFields(
    String storeId,
    ImportType importType,
  ) async {
    String integrationTypeString = '';
    switch (importType) {
      case ImportType.umag:
        integrationTypeString = 'umag';
        break;
      case ImportType.yml:
        integrationTypeString = 'yml';
        break;
      case ImportType.catalog:
        integrationTypeString = 'catalog';
        break;
    }
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.get(
        '${Env.baseUrl}/store/integrations/settings',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'storeId': storeId,
          'integrationCode': integrationTypeString,
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      List<IntegrationField> fields = (response.data as List).map((item) => IntegrationField.fromJson(item)).toList();
      logging('end', stackTrace: StackTrace.current);
      return Right(fields);
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

  Future<Either<ErrorResponse?, List<IntegrationHistoryItem>?>> getIntegrationHistory(
    String storeId,
    ImportType importType,
  ) async {
    String integrationTypeString = '';
    switch (importType) {
      case ImportType.umag:
        integrationTypeString = 'umag';
        break;
      case ImportType.yml:
        integrationTypeString = 'yml';
        break;
      case ImportType.catalog:
        integrationTypeString = 'catalog';
        break;
    }
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.get(
        '${Env.baseUrl}/store/integrations/history',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'storeId': storeId,
          'integrationCode': integrationTypeString,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<IntegrationHistoryItem> history =
          (response.data as List).map((item) => IntegrationHistoryItem.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(history);
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

  Future<Either<ErrorResponse?, List<IntegrationField>?>> updateIntegrationFields(
    String storeId,
    ImportType importType,
    List<IntegrationField> integrationFields,
  ) async {
    String integrationTypeString = '';
    switch (importType) {
      case ImportType.umag:
        integrationTypeString = 'umag';
        break;
      case ImportType.yml:
        integrationTypeString = 'yml';
        break;
      case ImportType.catalog:
        integrationTypeString = 'catalog';
        break;
    }
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.put(
        '${Env.baseUrl}/store/integrations/settings',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          'storeId': storeId,
          'integrationCode': integrationTypeString,
          'settings': integrationFields.map((item) => getField(item)).toList(),
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<IntegrationField> fields = (response.data as List).map((item) => IntegrationField.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(fields);
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

  getField(IntegrationField item) {
    //print(item.toRawJson());
    if (item.code == 'rate') {
      return {
        'code': 'rate',
        'value': item.value.isNotEmpty ? item.value : 24,
      };
    }
    return {'code': item.code, 'value': item.value};
  }

  Future<Either<ErrorResponse?, List<IntegrationSettingsItem>?>> getIntegrationSettings(
    String storeId,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.get(
        '${Env.baseUrl}/store/integrations/settings',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'storeId': storeId,
          'integrationCode': 'widget',
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<IntegrationSettingsItem> settings =
          (response.data as List).map((item) => IntegrationSettingsItem.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(settings);
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

  Future<Either<ErrorResponse?, List<PickupOption>?>> createPickupOptions({
    required String storeId,
    required String name,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.post(
        '${Env.baseUrl}/store/$storeId/pickupOptions',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "data": {
            "pickupName": name,
          }
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<PickupOption> options = (response.data as List).map((item) => PickupOption.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(options);
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

  Future<Either<ErrorResponse?, List<PickupOption>?>> updatePickupOptions({
    required String storeId,
    required List<PickupOptionsDto> optionsDto,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.put(
        '${Env.baseUrl}/store/$storeId/pickupOptions',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: optionsDto.map((option) => option.toJson()).toList(),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<PickupOption> options = (response.data as List).map((item) => PickupOption.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(options);
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

  Future<Either<ErrorResponse?, List<IntervalTime>?>> getIntervals({
    required String storeId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      logging('start storeId: $storeId', stackTrace: StackTrace.current);

      Response response = await dio.get(
        '${Env.baseUrl}/store/$storeId/timeslots',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<IntervalTime> intervals = (response.data as List).map((item) => IntervalTime.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(intervals);
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

  Future<Either<ErrorResponse?, List<IntervalTime>?>> createInterval({
    required String storeId,
    required int day,
    required String timeStart,
    required String timeEnd,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      logging('start storeId: $storeId', stackTrace: StackTrace.current);

      Map<String, dynamic> data = {"day": day, "timeStart": timeStart, "timeEnd": timeEnd};

      Response response = await dio.post(
        '${Env.baseUrl}/store/$storeId/timeslots',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: data,
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<IntervalTime> intervals = (response.data as List).map((item) => IntervalTime.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(intervals);
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

  Future<Either<ErrorResponse?, List<IntervalTime>?>> updateIntervals({
    required String storeId,
    required List<TimeSlotDto> list,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      logging('start storeId: $storeId', stackTrace: StackTrace.current);

      Response response = await dio.put(
        '${Env.baseUrl}/store/$storeId/timeslots',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: list.map((item) => item.toJson()).toList(),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<IntervalTime> intervals = (response.data as List).map((item) => IntervalTime.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(intervals);
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

  Future<Either<ErrorResponse?, Zones?>> getZones({
    required String storeId,
    required ZoneType type,
    String? parentId,
    String? search,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      logging('start parentId: $parentId', stackTrace: StackTrace.current);

      Map<String, dynamic> queryParams = {
        'type': zoneValues.reverse[type],
        'locationId': parentId ?? '',
        'q': search ?? '',
      };

      Response response = await dio.get(
        '${Env.baseUrl}/store/$storeId/zones',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: queryParams,
      );

      logging(response.toString(), name: 'Body $currentMethod');

      Zones zones = Zones.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);

      return Right(zones);
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

  Future<Either<ErrorResponse?, Zone?>> updateZone({
    required String storeId,
    required ZoneType type,
    required Zone zone,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      logging('start zone.id: ${zone.id}', stackTrace: StackTrace.current);

      Map<String, dynamic> data = {
        "type": zoneValues.reverse[type],
        "id": zone.id,
        "active": (zone.active == ActiveType.full || zone.active == ActiveType.part)
            ? activeValues.reverse[ActiveType.empty]
            : activeValues.reverse[ActiveType.full]
      };

      Response response = await dio.put(
        '${Env.baseUrl}/store/$storeId/zones',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: data,
      );

      logging(response.toString(), name: 'Body $currentMethod');

      Zone newZone = Zone.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);

      return Right(newZone);
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

  Future<Either<ErrorResponse?, List<BusinessCard>?>> getBusinessCard(
    String storeId, {
    String? language,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.get(
        '${Env.baseUrl}/store/businessCard/?storeId=$storeId',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'draft': true,
          'lang': language ?? LanguageHelper.getCurrentLocaleToBackend(),
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<BusinessCard> cards = (response.data as List).map((item) => BusinessCard.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);

      return Right(cards);
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
