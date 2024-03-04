import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'yandex_map_bloc.freezed.dart';
part 'yandex_map_event.dart';
part 'yandex_map_state.dart';

class YandexMapBloc extends Bloc<YandexMapEvent, YandexMapState> {
  final UpdateDataService _updateDataService;
  YandexMapBloc(
    this._updateDataService,
  ) : super(const YandexMapState.init()) {
    on<InitYandexMapEvent>(_init);
  }

  Future<void> _init(
    InitYandexMapEvent event,
    Emitter<YandexMapState> emit,
  ) async {
    final placemarks = await getPlacemarkObjects();
    emit(
      YandexMapState.preloadDataCompleted(
        collection: getClusterizedCollection(
          placemarks: placemarks,
        ),
        listMapObject: placemarks,
      ),
    );
  }

  /// Метод для получения коллекции кластеризованных маркеров
  ClusterizedPlacemarkCollection getClusterizedCollection({
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
      onClusterTap: (self, cluster) async {},
    );
  }

  /// Метод для генерации объектов маркеров для отображения на карте
  Future<List<PlacemarkMapObject>> getPlacemarkObjects() async {
    List<PlacemarkMapObject> listPlacemarkMapObject = [];
    final boutiques = _updateDataService.boutiques;
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
              'assets/images/${boutiques[i].caption}.png',
            ),
            scale: 2,
            anchor: const Offset(0.5, 1.2),
          ),
        ),
        onTap: (_, __) {},
      ));
    }
    return listPlacemarkMapObject;
  }
}
