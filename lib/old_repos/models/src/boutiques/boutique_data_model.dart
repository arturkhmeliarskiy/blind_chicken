import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'boutique_data_model.g.dart';

@JsonSerializable()
class BoutiqueDataModel {
  final String fotoMin;
  final String url;
  final String caption;
  final String name;
  final String nameShort;
  final String address;
  final String schedule;
  final String uidStore;
  final String iconPath;
  final BoutiqueCoordinatesDataModel coordinates;
  final List<BoutiqueSheduleDataModel> sheduleInfo;
  final Map<int, List<DateTime>> sheduleDateTimeInfo;

  BoutiqueDataModel({
    required this.fotoMin,
    required this.url,
    required this.caption,
    required this.name,
    required this.nameShort,
    required this.schedule,
    required this.address,
    required this.uidStore,
    required this.iconPath,
    required this.coordinates,
    required this.sheduleInfo,
    required this.sheduleDateTimeInfo,
  });

  factory BoutiqueDataModel.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$BoutiqueDataModelToJson(this);
}
