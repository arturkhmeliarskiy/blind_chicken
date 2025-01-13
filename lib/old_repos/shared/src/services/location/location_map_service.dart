import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:geolocator/geolocator.dart';

abstract class AppLocation {
  Future<AppLatLongDataModel> getCurrentLocation();

  Future<bool> requestPermission();

  Future<bool> checkPermission();
}

class LocationMapService implements AppLocation {
  final defLocation = const MoscowLocation();

  @override
  Future<AppLatLongDataModel> getCurrentLocation() async {
    return Geolocator.getCurrentPosition().then((value) {
      return AppLatLongDataModel(lat: value.latitude, long: value.longitude);
    }).catchError(
      (_) => defLocation,
    );
  }

  @override
  Future<bool> requestPermission() {
    return Geolocator.requestPermission()
        .then(
            (value) => value == LocationPermission.always || value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }

  @override
  Future<bool> checkPermission() {
    return Geolocator.checkPermission()
        .then(
            (value) => value == LocationPermission.always || value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }
}

class MoscowLocation extends AppLatLongDataModel {
  const MoscowLocation({
    super.lat = 55.7522200,
    super.long = 37.6155600,
  });
}
