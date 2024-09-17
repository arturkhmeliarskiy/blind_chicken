import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:models/src/boutiques/boutique_coordinates_data_model.dart';

part 'boutique_data_model.freezed.dart';

@freezed
class BoutiqueDataModel with _$BoutiqueDataModel {
  const BoutiqueDataModel._();
  factory BoutiqueDataModel({
    required String fotoMin,
    required String url,
    required String caption,
    required String name,
    required String nameShort,
    required String address,
    required String schedule,
    required String uidStore,
    required String iconPath,
    required BoutiqueCoordinatesDataModel coordinates,
    required List<BoutiqueSheduleDataModel> sheduleInfo,
    required Map<int, List<DateTime>> sheduleDateTimeInfo,
  }) = _BoutiqueDataModel;
}
