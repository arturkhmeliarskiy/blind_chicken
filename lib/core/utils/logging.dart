import 'dart:developer';

import 'package:pimmer_app/core/utils/debug_overlay/log/log_event.dart';
import 'package:pimmer_app/core/utils/debug_overlay/util/log_bucket.dart';
import 'package:pimmer_app/di/app_locator.dart';
import 'package:pimmer_app/env.dart';
import 'package:pimmer_app/utils/custom_trace.dart';

///Сделано чтоб вынести за скобки логи, возможно потом понадобиться
void logging(
  String? logMessage, {
  String? name,
  LogLevel? logLevel,
  StackTrace? stackTrace,
}) {
  final LogBucket logBucket = Locator.injection();
  String? method = name;
  if (stackTrace != null) {
    method = CustomTrace.from(stackTrace).functionName.toString();
  }
  if(name!=null && method!=null){
    method = '$method $name';
  }
  if (Env.enableDebugOverlay == true) {
    logBucket.add(LogEvent(
      name: method ,
      level: logLevel ?? LogLevel.debug,
      message: logMessage,
    ));
  }
  if (Env.enableDebugLog) {
    log(logMessage ?? 'null', name: method ?? 'DebugLog');
  }
}
