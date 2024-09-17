import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/gift_card/widgets/map/gift_map_boutiques_info.dart';
import 'package:blind_chicken/screens/gift_card/widgets/map/gift_map_point_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

@RoutePage()
class GiftYandexMapScreen extends StatefulWidget {
  const GiftYandexMapScreen({
    super.key,
    required this.onMapPoint,
    required this.point,
    required this.route,
  });

  final ValueChanged<BoutiqueDataModel> onMapPoint;
  final BoutiqueDataModel point;
  final PageRouteInfo<dynamic> route;

  @override
  State<GiftYandexMapScreen> createState() => _GiftYandexMapScreenState();
}

class _GiftYandexMapScreenState extends State<GiftYandexMapScreen> {
  final mapControllerCompleter = Completer<YandexMapController>();
  YandexMapController? _mapController;

  /// Значение текущего масштаба карты
  var _mapZoom = 0.0;

  /// Данные о местоположении пользователя
  CameraPosition? _userLocation;
  CameraPosition? _cameraPosition;
  late BoutiqueDataModel _point;

  List<BoutiqueDataModel> boutiques = [];

  Future<void> _initPermission() async {
    if (!await LocationService().checkPermission()) {
      await LocationService().requestPermission();
    }
    await _fetchCurrentLocation();
  }

  Future<void> _fetchCurrentLocation() async {
    AppLatLongDataModel location;
    const defLocation = MoscowLocation();
    location = defLocation;
    _moveToCurrentLocation(location);
  }

  Future<void> _moveToCurrentLocation(
    AppLatLongDataModel value, {
    double zoom = 12.0,
    bool isOpenModal = false,
    int index = 0,
  }) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: value.lat,
            longitude: value.long,
          ),
          zoom: zoom,
        ),
      ),
    );
    if (isOpenModal) {
      final updateDataService = GetIt.I.get<UpdateDataService>();
      final boutiques = updateDataService.boutiques;
      setState(() {
        _point = boutiques[index];
      });
      await Future.delayed(
          const Duration(
            seconds: 1,
            milliseconds: 700,
          ), () {
        showDialog(
          barrierColor: const Color.fromARGB(0, 117, 97, 97),
          context: context,
          builder: (BuildContext context) {
            return GiftMapPointInfo(
              point: BoutiqueDataModel(
                name: boutiques[index].name,
                schedule: boutiques[index].schedule,
                url: boutiques[index].url,
                fotoMin: boutiques[index].fotoMin,
                caption: boutiques[index].caption,
                nameShort: boutiques[index].nameShort,
                address: boutiques[index].address,
                uidStore: boutiques[index].uidStore,
                coordinates: boutiques[index].coordinates,
                iconPath: boutiques[index].iconPath,
                sheduleInfo: boutiques[index].sheduleInfo,
                sheduleDateTimeInfo: boutiques[index].sheduleDateTimeInfo,
              ),
              onMoreDetailed: () {
                widget.onMapPoint(boutiques[index]);
                context.navigateTo(widget.route);
              },
            );
          },
        );
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _point = widget.point;
    initBoutiques();
    _initPermission().ignore();
  }

  initBoutiques() async {
    final updateDataService = GetIt.I.get<UpdateDataService>();
    boutiques = updateDataService.boutiques;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          YandexMap(
            onMapCreated: (controller) {
              mapControllerCompleter.complete(controller);
            },
            mapObjects: [
              _getClusterizedCollection(
                placemarks: _getPlacemarkObjects(context, boutiques),
              ),
            ],
            onCameraPositionChanged: (cameraPosition, _, __) {
              setState(() {
                _mapZoom = cameraPosition.zoom;
                _cameraPosition = cameraPosition;
              });
            },
            onUserLocationAdded: (view) async {
              // получаем местоположение пользователя
              _userLocation = await _mapController?.getUserCameraPosition();
              // если местоположение найдено, центрируем карту относительно этой точки
              if (_userLocation != null) {
                await _mapController?.moveCamera(
                  CameraUpdate.newCameraPosition(
                    _userLocation!.copyWith(zoom: 10),
                  ),
                  animation: const MapAnimation(
                    type: MapAnimationType.linear,
                    duration: 0.3,
                  ),
                );
              }
              // меняем внешний вид маркера - делаем его непрозрачным
              return view.copyWith(
                pin: view.pin.copyWith(
                  opacity: 1,
                ),
              );
            },
          ),
          SafeArea(
            top: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.popRoute();
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                            blurRadius: 2,
                            offset: const Offset(0, 2), // Shadow position
                          ),
                        ],
                      ),
                      height: 60,
                      width: 53,
                      child: SvgPicture.asset(
                        'assets/icons/x.svg',
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (Platform.isIOS)
                      InkWell(
                        onTap: () async {
                          final location = await LocationService().getCurrentLocation();
                          _moveToCurrentLocation(location, isOpenModal: false);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                                blurRadius: 4,
                                offset: const Offset(0, 3), // Shadow position
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(2),
                          child: SvgPicture.asset('assets/icons/location.svg'),
                        ),
                      ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          _mapZoom++;
                        });
                        (await mapControllerCompleter.future).moveCamera(
                          animation: const MapAnimation(
                            type: MapAnimationType.linear,
                            duration: 0.5,
                          ),
                          CameraUpdate.newCameraPosition(
                            _cameraPosition!.copyWith(
                              zoom: _mapZoom,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(4),
                        child: SvgPicture.asset('assets/icons/+.svg'),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          _mapZoom--;
                        });
                        (await mapControllerCompleter.future).moveCamera(
                          animation: const MapAnimation(
                            type: MapAnimationType.linear,
                            duration: 0.5,
                          ),
                          CameraUpdate.newCameraPosition(
                            _cameraPosition!.copyWith(
                              zoom: _mapZoom,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(4),
                        child: SvgPicture.asset('assets/icons/-.svg'),
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          barrierColor: const Color.fromRGBO(0, 0, 0, 0),
                          builder: (context) => GiftMapBoutiquesInfo(
                            onSelectBoutique: (value, index) {
                              _moveToCurrentLocation(
                                value,
                                zoom: 17,
                                isOpenModal: true,
                                index: index,
                              );
                            },
                            selectedPoint: _point,
                            boutiques: boutiques,
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.all(16),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset('assets/icons/list.svg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                'Списком',
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Метод для получения коллекции кластеризованных маркеров
  ClusterizedPlacemarkCollection _getClusterizedCollection({
    required List<PlacemarkMapObject> placemarks,
  }) {
    return ClusterizedPlacemarkCollection(
      mapId: const MapObjectId('clusterized-1'),
      placemarks: placemarks,
      radius: 45,
      minZoom: 15,
      onClusterAdded: (self, cluster) async {
        return cluster.copyWith(
          appearance: cluster.appearance.copyWith(
            opacity: 1.0,
            onTap: (placemarkMapObject, point) async {
              (await mapControllerCompleter.future).moveCamera(
                animation: const MapAnimation(
                  type: MapAnimationType.linear,
                  duration: 0.5,
                ),
                CameraUpdate.newCameraPosition(
                  _cameraPosition!.copyWith(
                    target: point,
                    zoom: _mapZoom + 2.5,
                  ),
                ),
              );
            },
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                image: BitmapDescriptor.fromBytes(
                  await ClusterIconPainter(cluster.size).getClusterIconBytes(),
                ),
              ),
            ),
          ),
        );
      },
      onClusterTap: (self, cluster) async {
        await _mapController?.moveCamera(
          animation: const MapAnimation(type: MapAnimationType.linear, duration: 0.3),
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: cluster.placemarks.first.point,
              zoom: _mapZoom + 1,
            ),
          ),
        );
      },
    );
  }

  /// Метод для генерации объектов маркеров для отображения на карте
  List<PlacemarkMapObject> _getPlacemarkObjects(
    BuildContext context,
    List<BoutiqueDataModel> boutiques,
  ) {
    List<PlacemarkMapObject> listPlacemarkMapObject = [];

    for (int i = 0; i < boutiques.length; i++) {
      listPlacemarkMapObject.add(PlacemarkMapObject(
        mapId: MapObjectId('MapObject $i'),
        point: Point(
          latitude: boutiques[i].coordinates.latitude,
          longitude: boutiques[i].coordinates.longitude,
        ),
        opacity: 1,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
            image: BitmapDescriptor.fromAssetImage(
              'assets/images/${boutiques[i].iconPath}.png',
            ),
            scale: 2,
            anchor: const Offset(0.5, 1.2),
          ),
        ),
        onTap: (_, __) => showDialog(
          barrierColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return GiftMapPointInfo(
              point: boutiques[i],
              onMoreDetailed: () {
                widget.onMapPoint(boutiques[i]);
                context.navigateTo(widget.route);
              },
            );
          },
        ),
      ));
    }
    return listPlacemarkMapObject;
  }
}

class MoscowLocation extends AppLatLongDataModel {
  const MoscowLocation({
    super.lat = 55.7522200,
    super.long = 37.6155600,
  });
}

abstract class AppLocation {
  Future<AppLatLongDataModel> getCurrentLocation();

  Future<bool> requestPermission();

  Future<bool> checkPermission();
}

class LocationService implements AppLocation {
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
