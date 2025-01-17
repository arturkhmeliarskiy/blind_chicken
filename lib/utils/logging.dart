import 'dart:developer';

import 'package:blind_chicken/env.dart';
import 'package:blind_chicken/utils/custom_trace.dart';

///Сделано чтоб вынести за скобки логи, возможно потом понадобиться
///


void logging(
  String? logMessage, {
  String? name,
  StackTrace? stackTrace,
}) {

  String? method = name;
  if (stackTrace != null) {
    method = CustomTrace.from(stackTrace).functionName.toString();
  }
  if(name!=null && method!=null){
    method = '$method $name';
  }
  if (Env.enableDebugLog) {
    log(logMessage ?? 'null', name: method ?? 'DebugLog');
  }
}
