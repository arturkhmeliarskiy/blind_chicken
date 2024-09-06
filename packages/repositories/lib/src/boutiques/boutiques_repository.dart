import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class BoutiquesRepository {
  final BoutiquesService _boutiquesService;

  BoutiquesRepository(
    this._boutiquesService,
  );

  Future<BoutiquesDataModel> getBoutiques() async {
    final boutiques = await _boutiquesService.getBoutiques() ?? BoutiquesResponse();
    return boutiques.toBoutiques();
  }

  Future<BoutiqueInfoDataModel> getInfoBoutique({
    required String uid,
    String? messageId,
  }) async {
    final boutiques = await _boutiquesService.getInfoBoutique(
          uid: uid,
          messageId: messageId,
        ) ??
        BoutiqueInfoResponse();
    return boutiques.toInfoBoutique();
  }

  Future<BoutiqueInfoDetailDataModel> getInfoBoutiqueDetail({required String uid}) async {
    final boutiques = await _boutiquesService.getInfoBoutiqueDetail(
          uid: uid,
        ) ??
        BoutiqueInfoDetailResponse();
    return boutiques.toInfoBoutiqueDetail();
  }
}

extension on BoutiqueInfoDetailResponse {
  BoutiqueInfoDetailDataModel toInfoBoutiqueDetail() {
    return BoutiqueInfoDetailDataModel(
        category: List<BoutiqueCategoryItemDataModel>.from(
          category?.map(
                (item) => BoutiqueCategoryItemDataModel(
                  title: item.title ?? '',
                  listInfo: item.listInfo ?? [],
                ),
              ) ??
              [],
        ),
        r: r ?? '',
        e: e ?? '');
  }
}

extension on BoutiquesResponse {
  BoutiquesDataModel toBoutiques() {
    return BoutiquesDataModel(
        data: List<BoutiqueDataModel>.from(
          data?.map(
                (item) => BoutiqueDataModel(
                  address: item.address ?? '',
                  fotoMin: item.fotoMin ?? '',
                  url: item.url ?? '',
                  caption: item.caption ?? '',
                  name: item.name ?? '',
                  nameShort: item.nameShort ?? '',
                  schedule: item.schedule ?? '',
                  coordinates: BoutiqueCoordinatesDataModel(
                    latitude: item.coordinates?.latitude ?? 0.0,
                    longitude: item.coordinates?.longitude ?? 0.0,
                  ),
                  uidStore: item.uidStore ?? '',
                  iconPath: (item.caption ?? '').replaceAll(' ', '_').toLowerCase(),
                ),
              ) ??
              [],
        ),
        errorMessage: errorMessage ?? '');
  }
}

extension on BoutiqueInfoResponse {
  BoutiqueInfoDataModel toInfoBoutique() {
    final fotoDetail = data?.fotoDetail
            ?.map(
              (item) => item.min ?? '',
            )
            .toList() ??
        [];
    final video = data?.video ?? [];
    final media = [...video, ...fotoDetail];
    return BoutiqueInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      data: BoutiqueDataInfoDataModel(
        fotoDetail: List<BoutiqueFotoDetailDataModel>.from(
          data?.fotoDetail?.map(
                (item) => BoutiqueFotoDetailDataModel(
                  orig: item.orig ?? '',
                  min: item.min ?? '',
                ),
              ) ??
              [],
        ),
        fotoMinList: data?.fotoMinList ?? '',
        url: data?.url ?? '',
        caption: data?.caption ?? '',
        address: data?.address ?? '',
        schedule: data?.schedule ?? '',
        uidStore: data?.uidStore ?? '',
        media: media,
        video: video,
        coordinates: BoutiqueCoordinatesDataModel(
          latitude: data?.coordinates?.latitude ?? 0.0,
          longitude: data?.coordinates?.longitude ?? 0.0,
        ),
        iconPath: (data?.caption ?? '').replaceAll(' ', '_').toLowerCase(),
        addressFull: data?.addressFull ?? '',
        nameShort: data?.nameShort ?? '',
        name: data?.name ?? '',
      ),
    );
  }
}
