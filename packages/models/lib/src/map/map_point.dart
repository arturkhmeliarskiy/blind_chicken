import 'package:equatable/equatable.dart';

/// Модель точки на карте
class MapPointDataModel extends Equatable {
  const MapPointDataModel({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.label,
    required this.location,
    required this.schedule,
    required this.image,
    required this.iconName,
  });

  /// Название населенного пункта
  final String name;

  /// Тип машазина
  final String label;

  /// Местонахождение
  final String location;

  /// Расписание
  final String schedule;

  /// Изображение
  final String image;

  /// Изображение
  final String iconName;

  /// Широта
  final double latitude;

  /// Долгота
  final double longitude;

  @override
  List<Object?> get props => [
        name,
        latitude,
        longitude,
        label,
        schedule,
        location,
        image,
        iconName,
      ];
}
