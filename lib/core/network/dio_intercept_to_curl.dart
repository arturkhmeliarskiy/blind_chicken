import 'dart:convert';

import 'package:dio/dio.dart';

import '../../app/bloc/app_bloc.dart';
import '../../core_config/di/app_locator.dart';
import '../bloc/bloc_action.dart';
import '../utils/debug_overlay/log/log_event.dart';
import '../utils/logging.dart';

class DioInterceptToCurl extends Interceptor {
  final bool? printOnSuccess;
  final bool convertFormData;

  DioInterceptToCurl({this.printOnSuccess, this.convertFormData = true});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _renderCurlRepresentation(err.requestOptions);

    return handler.next(err); //continue
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Создаем курл
    if (options.extra['customString'] != null) {
      String currentMethod = options.extra['customString'];
      logging('start sending', name: currentMethod, logLevel: LogLevel.info);
    }
    // Продолжаем выполнение запроса
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {

    if (response.statusCode == 504) {
      AppBloc appBloc = Locator.injection();
      appBloc.add(AppEvent.showErrorDialog(action: ShowSomethingWrong(code: 504)));
    }
    // Обработка ответа
    if (printOnSuccess != null && printOnSuccess == true) {
      if (response.requestOptions.extra['customString'] != null) {
        String currentMethod = response.requestOptions.extra['customString'];
        _renderCurlRepresentation(response.requestOptions, currentMethod: currentMethod);
      } else {
        _renderCurlRepresentation(response.requestOptions);
      }
    }

    return handler.next(response); //continue
  }

  void _renderCurlRepresentation(RequestOptions requestOptions, {String? currentMethod}) {
    // add a breakpoint here so all errors can break
    try {
      logging(_cURLRepresentation(requestOptions), name: currentMethod, logLevel: LogLevel.info);
    } catch (err) {
      logging(
        'unable to create a CURL representation of the requestOptions',
        name: currentMethod,
        logLevel: LogLevel.info,
      );
    }
  }

  String _cURLRepresentation(RequestOptions options) {
    List<String> components = ['curl -i'];
    if (options.method.toUpperCase() != 'GET') {
      components.add('-X ${options.method}');
    }

    options.headers.forEach((k, v) {
      if (k != 'Cookie') {
        components.add('-H "$k: $v"');
      }
    });

    if (options.data != null) {
      // FormData can't be JSON-serialized, so keep only their fields attributes
      if (options.data is FormData && convertFormData == true) {
        options.data = Map.fromEntries(options.data.fields);
      }

      final data = json.encode(options.data).replaceAll('"', '\\"');
      components.add('-d "$data"');
    }

    components.add('"${options.uri.toString()}"');

    return components.join(' \\\n\t');
  }
}
