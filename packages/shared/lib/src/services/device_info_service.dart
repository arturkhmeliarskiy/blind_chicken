import 'package:uuid/uuid.dart';

class DeviceInfoService {
  final Uuid _uuid;
  DeviceInfoService(this._uuid);

  Future<String> getDeviceId() async {
    String result = _uuid.v8();
    return result;
  }
}
