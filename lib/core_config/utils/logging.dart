import 'dart:developer';

import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/env.dart';
import 'package:blind_chicken/core_config/utils/custom_trace.dart';
import 'package:blind_chicken/core_config/utils/debug_overlay/log/log_event.dart';
import 'package:blind_chicken/core_config/utils/debug_overlay/util/log_bucket.dart';

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
  if (name != null && method != null) {
    method = '$method $name';
  }
  if (Env.enableDebugOverlay == true) {
    logBucket.add(LogEvent(
      name: method,
      level: logLevel ?? LogLevel.debug,
      message: logMessage,
    ));
  }
  if (Env.enableDebugLog) {
    log(logMessage ?? 'null', name: method ?? 'DebugLog');
  }
}
