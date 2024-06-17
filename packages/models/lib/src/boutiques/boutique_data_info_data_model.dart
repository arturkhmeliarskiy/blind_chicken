import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:models/src/boutiques/boutique_foto_detail_data_model.dart';

part 'boutique_data_info_data_model.freezed.dart';

@freezed
class BoutiqueDataInfoDataModel with _$BoutiqueDataInfoDataModel {
  const BoutiqueDataInfoDataModel._();
  factory BoutiqueDataInfoDataModel({
    required String fotoMinList,
    required List<BoutiqueFotoDetailDataModel> fotoDetail,
    required List<String> media,
    required List<String> video,
    required String url,
    required String caption,
    required String address,
    required String schedule,
    required String uidStore,
    required BoutiqueCoordinatesDataModel coordinates,
    required String addressFull,
    required String nameShort,
    required String name,
    required String iconPath,
  }) = _BoutiqueDataInfoDataModel;
}
