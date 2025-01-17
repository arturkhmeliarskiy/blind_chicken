import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/services/services.dart';

class LocationRepository {
  final LocationService _locationService;

  LocationRepository(this._locationService);

  Future<SearchLocationDataModel> searchLocation({
    required String contentType,
    String? query,
    String? cityId,
    String? streetId,
    int? withParent,
    int? limit,
    int? offset,
  }) async {
    final location = await _locationService.searchLocation(
          contentType: contentType,
          query: query,
          cityId: cityId,
          streetId: streetId,
          withParent: withParent,
          limit: limit,
          offset: offset,
        ) ??
        SearchLocationResponse();
    return location.toSearchLocation();
  }

  Future<CalculationCostDeliveryDataModel> calculationCostDelivery({
    required String zipcode,
    required int sum,
    required String cityId,
  }) async {
    final location = await _locationService.calculationCostDelivery(
          zipcode: zipcode,
          cityId: cityId,
          sum: sum,
        ) ??
        CalculationCostDeliveryRsponse();
    return location.toCalculationCostDelivery();
  }

  Future<DeliveryDataModel> getDelivery() async {
    final delivery = await _locationService.getDelivery() ?? DeliveryRsponse();
    return delivery.toDelivery();
  }

  Future<DeliveryInfoDataModel> addPickUpPoint({
    required String pickId,
  }) async {
    final delivery = await _locationService.addPickUpPoint(
          pickId: pickId,
        ) ??
        DeliveryInfoRsponse();
    return delivery.toDeliveryInfo();
  }

  Future<DeliveryInfoDataModel> addDeliveryAddress({
    required String addr,
    required String city,
    required String zip,
  }) async {
    final delivery = await _locationService.addDeliveryAddress(
          addr: addr,
          city: city,
          zip: zip,
        ) ??
        DeliveryInfoRsponse();
    return delivery.toDeliveryInfo();
  }

  Future<DeliveryInfoDataModel> deleteDeliveryAddress({
    required String id,
  }) async {
    final delivery = await _locationService.deleteDeliveryAddress(
          id: id,
        ) ??
        DeliveryInfoRsponse();
    return delivery.toDeliveryInfo();
  }

  Future<DeliveryInfoDataModel> switchTypeDelivery({
    required String deliveryId,
  }) async {
    final delivery = await _locationService.switchTypeDelivery(
          deliveryId: deliveryId,
        ) ??
        DeliveryInfoRsponse();
    return delivery.toDeliveryInfo();
  }
}

extension on SearchLocationResponse {
  SearchLocationDataModel toSearchLocation() {
    return SearchLocationDataModel(
      searchContext: SearchContextDataModel(
        cityId: searchContext?.cityId ?? '',
        contentType: searchContext?.contentType ?? '',
        streetId: searchContext?.streetId ?? '',
        query: searchContext?.query ?? '',
      ),
      result: List<SearchLocationInfoDataModel>.from(result?.map(
            (item) => SearchLocationInfoDataModel(
                id: item.id ?? '',
                name: item.name ?? '',
                zip: item.zip ?? 0,
                type: item.type ?? '',
                typeShort: item.typeShort ?? '',
                okato: item.okato ?? '',
                contentType: item.contentType ?? '',
                guid: item.guid ?? '',
                ifnsfl: item.ifnsfl ?? '',
                ifnsul: item.ifnsul ?? '',
                oktmo: item.oktmo ?? '',
                parentGuid: item.parentGuid ?? '',
                cadnum: item.cadnum ?? '',
                parents: List<SearchLocationInfoDataModel>.from(item.parents?.map(
                      (element) => SearchLocationInfoDataModel(
                        id: element.id ?? '',
                        name: element.name ?? '',
                        zip: element.zip ?? 0,
                        type: element.type ?? '',
                        typeShort: element.typeShort ?? '',
                        okato: element.okato ?? '',
                        contentType: element.contentType ?? '',
                        guid: element.guid ?? '',
                        ifnsfl: element.ifnsfl ?? '',
                        ifnsul: element.ifnsul ?? '',
                        oktmo: element.oktmo ?? '',
                        parentGuid: element.parentGuid ?? '',
                        cadnum: element.cadnum ?? '',
                        parents: [],
                      ),
                    ) ??
                    [])),
          ) ??
          []),
    );
  }
}

extension on CalculationCostDeliveryRsponse {
  CalculationCostDeliveryDataModel toCalculationCostDelivery() {
    return CalculationCostDeliveryDataModel(
      r: r ?? '',
      e: e ?? '',
      price: price ?? 0,
    );
  }
}

extension on DeliveryRsponse {
  DeliveryDataModel toDelivery() {
    return DeliveryDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      pick: DeliveryPickDataModel(
        id: pick?.id ?? '',
        name: pick?.name ?? '',
        shedule: pick?.shedule ?? '',
      ),
      deliveryId: deliveryId ?? '',
      address: List<DeliveryAddressDataModel>.from(
        address?.map(
              (item) {
                return DeliveryAddressDataModel(
                  id: item.id ?? '',
                  addr: item.addr ?? '',
                  zip: item.zip ?? '',
                  cityId: item.cityId ?? '',
                );
              },
            ) ??
            [],
      ),
    );
  }
}

extension on DeliveryInfoRsponse {
  DeliveryInfoDataModel toDeliveryInfo() {
    return DeliveryInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
    );
  }
}
