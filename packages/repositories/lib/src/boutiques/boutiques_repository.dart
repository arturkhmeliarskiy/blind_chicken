import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class BoutiquesRepository {
  final BoutiquesService _boutiquesService;

  BoutiquesRepository(
    this._boutiquesService,
  );

  Future<BoutiquesDataModel> getBoutiques({
    int? optic,
  }) async {
    final boutiques = await _boutiquesService.getBoutiques(
          optic: optic,
        ) ??
        BoutiquesResponse();
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

  Future<AppointmentVisionCheckDataModel> createVc({
    required String uid,
    required String date,
  }) async {
    final boutiques = await _boutiquesService.createVc(
          uid: uid,
          date: date,
        ) ??
        AppointmentVisionCheckResponse();
    return boutiques.toCreateVc();
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
                (item) {
                  List<BoutiqueSheduleDataModel> sheduleInfo = List<BoutiqueSheduleDataModel>.from(
                    item.scheduleInfo?.map(
                          (element) => BoutiqueSheduleDataModel(
                            s: element.s ?? 0,
                            e: element.e ?? 0,
                          ),
                        ) ??
                        [],
                  );
                  return BoutiqueDataModel(
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
                    sheduleInfo: sheduleInfo,
                    sheduleDateTimeInfo: _converSheduleTime(sheduleInfo),
                  );
                },
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

extension on AppointmentVisionCheckResponse {
  AppointmentVisionCheckDataModel toCreateVc() {
    return AppointmentVisionCheckDataModel(
      r: r ?? '',
      e: e ?? '',
      name: name ?? '',
      date: date ?? '',
      time: time ?? '',
      errorMessage: errorMessage ?? '',
    );
  }
}

Map<int, List<DateTime>> _converSheduleTime(List<BoutiqueSheduleDataModel> sheduleInfo) {
  Map<int, List<DateTime>> result = {};
  List<DateTime> shedule = [];

  for (int i = 0; i < sheduleInfo.length; i++) {
    for (int j = sheduleInfo[i].s; j < sheduleInfo[i].e; j++) {
      shedule.add(DateTime(0, 0, 0, j));
      shedule.add(DateTime(0, 0, 0, j, 30));
    }
    result[i] = shedule;
    shedule = [];
  }
  return result;
}
