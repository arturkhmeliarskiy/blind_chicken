import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

@RoutePage()
class BoutiqueYandexMapScreen extends StatefulWidget {
  const BoutiqueYandexMapScreen({
    super.key,
    required this.mapPoint,
  });

  final BoutiqueDataModel mapPoint;

  @override
  State<BoutiqueYandexMapScreen> createState() => _BoutiqueYandexMapScreenState();
}

class _BoutiqueYandexMapScreenState extends State<BoutiqueYandexMapScreen> {
  final mapControllerCompleter = Completer<YandexMapController>();
  YandexMapController? _mapController;

  /// Значение текущего масштаба карты
  var _mapZoom = 0.0;

  /// Данные о местоположении пользователя
  CameraPosition? _userLocation;
  CameraPosition? _cameraPosition;

  List<BoutiqueDataModel> boutiques = [];

  Future<void> _initPermission() async {
    if (!await LocationMapService().checkPermission()) {
      await LocationMapService().requestPermission();
    }
    await _fetchCurrentLocation();
  }

  Future<void> _fetchCurrentLocation() async {
    AppLatLongDataModel location;

    location = AppLatLongDataModel(
      lat: widget.mapPoint.coordinates.latitude,
      long: widget.mapPoint.coordinates.longitude,
    );
    _moveToCurrentLocation(location);
  }

  Future<void> _moveToCurrentLocation(
    AppLatLongDataModel value, {
    double zoom = 12.0,
    bool isOpenModal = false,
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
  }

  @override
  void initState() {
    super.initState();
    initBoutiques();
    _initPermission().ignore();
  }

  initBoutiques() async {
    final updateDataService = GetIt.I.get<UpdateDataService>();
    boutiques = updateDataService.boutiques;
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          YandexMap(
            onMapCreated: (YandexMapController controller) async {
              mapControllerCompleter.complete(controller);
            },
            mapObjects: [
              _getClusterizedCollection(
                placemarks: _getPlacemarkObjects(context),
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
                          final location = await LocationMapService().getCurrentLocation();
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
                      height: 70,
                    ),
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
  List<PlacemarkMapObject> _getPlacemarkObjects(BuildContext context) {
    List<PlacemarkMapObject> listPlacemarkMapObject = [];
    final listMapPoint = [widget.mapPoint];
    for (int i = 0; i < listMapPoint.length; i++) {
      listPlacemarkMapObject.add(PlacemarkMapObject(
        mapId: MapObjectId('MapObject $i'),
        point: Point(
            latitude: listMapPoint[i].coordinates.latitude,
            longitude: listMapPoint[i].coordinates.longitude),
        opacity: 1,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
            image: BitmapDescriptor.fromAssetImage(
              'assets/images/${listMapPoint[i].iconPath}.png',
            ),
            scale: 2,
            anchor: const Offset(0.5, 1.2),
          ),
        ),
        onTap: (_, __) => showDialog(
          barrierColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 108,
                        width: 300,
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 3), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.mapPoint.name,
                                          style:
                                              Theme.of(context).textTheme.displayMedium?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          widget.mapPoint.schedule,
                                          style: Theme.of(context).textTheme.displayMedium,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 40,
                                  padding: const EdgeInsets.all(4),
                                  child: GestureDetector(
                                    onTap: () {
                                      context.popRoute();
                                    },
                                    child: SvgPicture.asset(
                                      'assets/icons/x.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ));
    }
    return listPlacemarkMapObject;
  }
}
