import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class BoutiquesRepository {
  final BoutiquesService _boutiquesService;

  BoutiquesRepository(
    this._boutiquesService,
  );

  Future<List<BoutiquesDataModel>> getBoutiques() async {
    final listBoutiques = await _boutiquesService.getBoutiques();
    return listBoutiques.toBoutiques(listBoutiques);
  }
}

extension on List<BoutiquesResponse> {
  List<BoutiquesDataModel> toBoutiques(List<BoutiquesResponse> listBoutiques) {
    return List<BoutiquesDataModel>.from(
      listBoutiques.map(
        (item) => BoutiquesDataModel(
          id: item.id ?? 0,
          title: item.title ?? '',
          address: item.address ?? '',
          fullAddress: item.fullAddress ?? '',
          workingHours: item.workingHours ?? '',
          images: item.images ?? [],
          productCategories: item.productCategories ?? '',
          productCategoriesBrend: item.productCategoriesBrend ?? '',
          butterflies: item.butterflies ?? '',
          balaclavas: item.balaclavas ?? '',
          balletFlats: item.balletFlats ?? '',
          balmsRestorersSkin: item.balmsRestorersSkin ?? '',
          baseballCaps: item.baseballCaps ?? '',
          bermuda: item.bermuda ?? '',
          bikinis: item.bikinis ?? '',
          blouses: item.blouses ?? '',
          body: item.body ?? '',
          bodyUnderwear: item.bodyUnderwear ?? '',
          sandals: item.sandals ?? '',
          ankleBoots: item.ankleBoots ?? '',
          boots: item.boots ?? '',
          bracelets: item.bracelets ?? '',
          bra: item.bra ?? '',
          keyRings: item.keyRings ?? '',
          briefcases: item.briefcases ?? '',
          brooches: item.brooches ?? '',
          trousers: item.trousers ?? '',
          bras: item.bras ?? '',
          value1: item.value1 ?? '',
          value2: item.value2 ?? '',
          value3: item.value3 ?? '',
          value4: item.value4 ?? '',
          value5: item.value5 ?? '',
          value6: item.value6 ?? '',
          value7: item.value7 ?? '',
          value8: item.value8 ?? '',
          value9: item.value9 ?? '',
          value10: item.value10 ?? '',
          value11: item.value11 ?? '',
          value12: item.value12 ?? '',
          value13: item.value13 ?? '',
          value14: item.value14 ?? '',
          value15: item.value15 ?? '',
          value16: item.value16 ?? '',
          value17: item.value17 ?? '',
          value18: item.value18 ?? '',
        ),
      ),
    );
  }
}
