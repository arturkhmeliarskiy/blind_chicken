import 'dart:developer';

import 'package:flutter/services.dart';

class BadgeService {
  static const MethodChannel _channel = MethodChannel('blind_chicken/countBages');

  static Future<void> updateBadgeCount(int count) async {
    try {
      await _channel.invokeMethod('updateBadgeCount', count);
    } on PlatformException catch (e) {
      // Handle platform exception/error
      log("Failed to update badge count: '${e.message}'.");
    }
  }
}
