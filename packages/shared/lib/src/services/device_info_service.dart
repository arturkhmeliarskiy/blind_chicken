import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoService {
  final DeviceInfoPlugin _deviceInfoPlugin;

  DeviceInfoService(this._deviceInfoPlugin);
  Future<String> getDeviceId() async {
    String result = '';

    final deviceInfo = await _deviceInfoPlugin.deviceInfo;
    if (Platform.isAndroid) {
      result = deviceInfo.data['id'];
    } else {
      result = deviceInfo.data['identifierForVendor'];
    }

    return result;
  }
}
