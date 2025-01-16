import 'dart:async';
import 'package:blind_chicken/core/utils/logging.dart';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

part 'gift_card_bloc.freezed.dart';
part 'gift_card_event.dart';
part 'gift_card_state.dart';

class GiftCardBloc extends Bloc<GiftCardEvent, GiftCardState> {
  final CatalogRepository _catalogRepository;
  final UpdateDataService _updateDataService;
  final GiftCardRepository _giftCardRepository;
  final BoutiquesRepository _boutiquesRepository;
  final LocationRepository _locationRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final StoreVersionAppRepository _storeVersionAppRepository;
  final AppMetricaEcommerceService _appMetricaEcommerceService;
  final BasketRepository _basketRepository;

  GiftCardBloc(
    this._catalogRepository,
    this._updateDataService,
    this._giftCardRepository,
    this._boutiquesRepository,
    this._locationRepository,
    this._sharedPreferencesService,
    this._storeVersionAppRepository,
    this._appMetricaEcommerceService,
    this._basketRepository,
  ) : super(const GiftCardState.init()) {
    on<GiftCardEvent>(
      (event, emit) => event.map(
        preloadData: (event) => _preloadData(event, emit),
        createOrder: (event) => _createOrder(event, emit),
        changeTypeGiftCard: (event) => _changeTypeGiftCard(event, emit),
        changeAmountPaidVirtualCard: (event) => _changeAmountPaidVirtualCard(event, emit),
        changeAmountPaidPlasticCard: (event) => _changeAmountPaidPlasticCard(event, emit),
        changeReceivingType: (event) => _changeReceivingType(event, emit),
        addAddressDelivery: (event) => _addAddressDelivery(event, emit),
        selectAddressDelivery: (event) => _selectAddressDelivery(event, emit),
        deleteAddressDelivery: (event) => _deleteAddressDelivery(event, emit),
        changeUidPickUpPoint: (event) => _changeUidPickUpPoint(event, emit),
        changePaymentType: (event) => _changePaymentType(event, emit),
      ),
    );
  }

  Future<void> _preloadData(
    InitGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    emit(const GiftCardState.load());
    bool isUpdateVersionApp = false;
    String appStoreInfoVersion = '';
    int delivery = 0;
    int amountPaid = 50000;
    DeliveryDataModel? deliveryInfo;
    BoutiqueDataModel? boutique;

    _appMetricaEcommerceService.openPages(titleScreen: 'Подарочная карта');
    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;

    if (event.isNotification) {
      await _giftCardRepository.pushOpenGiftcard(
        messageId: event.messageId,
      );
    }
    final boutiques = await _boutiquesRepository.getBoutiques();
    _updateDataService.boutiques = boutiques.data;

    deliveryInfo = await _locationRepository.getDelivery();
    if (isAuth) {
      boutique = _updateDataService.boutiques
          .firstWhere((item) => item.uidStore == (deliveryInfo?.pick.id ?? ''));
      final paymentsInfo = await _basketRepository.getPaymentMethods();
      _updateDataService.payments = paymentsInfo.payments;
    }

    if (deliveryInfo.deliveryId == '2') {
      CalculationCostDeliveryDataModel calculationCostDelivery =
          await _locationRepository.calculationCostDelivery(
              zipcode: deliveryInfo.address.first.zip,
              sum: amountPaid,
              cityId: deliveryInfo.address.first.cityId);
      delivery = calculationCostDelivery.price;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        isUpdateVersionApp = true;
      }
    }

    emit(
      GiftCardState.preloadDataCompleted(
        payments: _updateDataService.payments,
        isLoadCreateOrder: false,
        isUpdateVersionApp: isUpdateVersionApp,
        isNotification: event.isNotification,
        searchQuery: event.searchQuery,
        receivingType: deliveryInfo.deliveryId == '1' ? 'Самовывоз' : 'Доставка',
        isUponReceipt: deliveryInfo.address.isNotEmpty
            ? deliveryInfo.address.first.cityId == '7700000000000'
            : true,
        address: boutique?.name ?? '',
        addressDelivery: BasketAddressDataModel(
          address: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.addr : '',
          zip: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.zip : '',
          cityId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.cityId : '',
          adrId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.id : '',
        ),
        deliveryInfo: deliveryInfo,
        boutique: boutique,
        delivery: delivery,
        selectIndexAddress: 0,
        typePay: _updateDataService.payments.first,
        typeGiftCard: 'Виртуальная',
        amountPaid: amountPaid,
        boutiques: boutiques,
        uidPickUpPoint: deliveryInfo.pick.id,
        paymentId: '1',
        isAuth: isAuth,
      ),
    );
  }

  Future<void> _createOrder(
    CreateOrderGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(
      preloadDataCompleted: (initState) async {
        emit(initState.copyWith(isLoadCreateOrder: true));
        final result = await _catalogRepository.payGiftCard(
          request: event.request,
        );

        _appMetricaEcommerceService.startAndEndCreatePurchaseGiftCard(
          typeProductToSoppingCart: AppMetricaTypeCreatePurchaseEnum.startCreatePurchase,
          titleScreen: initState.searchQuery.isNotEmpty ? 'Поиск' : 'Подарочная карта',
          idColor: event.request.color,
          searchQuery: initState.searchQuery,
          typeGiftCard: event.request.type,
          priceActual: event.request.sum,
          priceOriginal: '50000',
          quantity: 1,
        );

        logging(result.e, stackTrace: StackTrace.current);
        if (result.r == '1') {
          emit(
            GiftCardState.createOrderSuccessfully(
              orderId: result.id,
              searchQuery: initState.searchQuery,
            ),
          );
        } else {
          emit(
            initState.copyWith(
              isLoadCreateOrder: false,
              creatOrderMessage: result.errorMessage,
            ),
          );
        }
      },
    );
  }

  Future<void> _changeTypeGiftCard(
    ChangeTypeGiftCardGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(
        initState.copyWith(
          typeGiftCard: event.typeGiftCard,
        ),
      );
    });
  }

  Future<void> _changeAmountPaidVirtualCard(
    ChangeAmountPaidVirtualGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(
        initState.copyWith(
          amountPaid: event.amountPaid,
        ),
      );
    });
  }

  Future<void> _changeAmountPaidPlasticCard(
    ChangeAmountPaidPlasticGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      String zip = '';
      String cityId = '';
      int delivery = 0;

      if (initState.deliveryInfo?.address.isNotEmpty ?? false) {
        zip = initState.deliveryInfo?.address[initState.selectIndexAddress ?? 0].zip ?? '';
        cityId = initState.deliveryInfo?.address[initState.selectIndexAddress ?? 0].cityId ?? '';

        CalculationCostDeliveryDataModel calculationCostDelivery =
            await _locationRepository.calculationCostDelivery(
          zipcode: zip,
          sum: event.amountPaid,
          cityId: cityId,
        );
        delivery = calculationCostDelivery.price;
      }

      emit(
        initState.copyWith(
          amountPaid: event.amountPaid,
          delivery: delivery,
        ),
      );
    });
  }

  Future<void> _changeReceivingType(
    ChangeReceivingTypeGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      await _locationRepository.switchTypeDelivery(
        deliveryId: event.receivingType == 'Самовывоз' ? '1' : '2',
      );
      emit(initState.copyWith(
        receivingType: event.receivingType,
      ));
    });
  }

  Future<void> _addAddressDelivery(
    AddAddressDeliveryGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      await _locationRepository.addDeliveryAddress(
        addr: event.addressDelivery.address,
        city: event.addressDelivery.cityId ?? '',
        zip: event.addressDelivery.zip,
      );

      DeliveryDataModel deliveryInfo = await _locationRepository.getDelivery();

      CalculationCostDeliveryDataModel calculationCostDelivery =
          await _locationRepository.calculationCostDelivery(
        zipcode: deliveryInfo.address.first.zip,
        sum: initState.amountPaid,
        cityId: deliveryInfo.address.first.cityId,
      );
      int delivery = calculationCostDelivery.price;

      emit(initState.copyWith(
        delivery: delivery,
        isUponReceipt: deliveryInfo.address.isNotEmpty
            ? deliveryInfo.address.first.cityId == '7700000000000'
            : true,
        deliveryInfo: deliveryInfo,
        addressDelivery: BasketAddressDataModel(
          address: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.addr : '',
          zip: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.zip : '',
          cityId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.cityId : '',
          adrId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.id : '',
        ),
      ));
    });
  }

  Future<void> _selectAddressDelivery(
    SelectAddressDeliveryGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      String address = '';
      String zip = '';
      String cityId = '';
      String id = '';

      address = initState.deliveryInfo?.address[event.index].addr ?? '';
      zip = initState.deliveryInfo?.address[event.index].zip ?? '';
      cityId = initState.deliveryInfo?.address[event.index].cityId ?? '';
      id = initState.deliveryInfo?.address[event.index].cityId ?? '';

      CalculationCostDeliveryDataModel calculationCostDelivery =
          await _locationRepository.calculationCostDelivery(
        zipcode: zip,
        sum: initState.amountPaid,
        cityId: cityId,
      );
      int delivery = calculationCostDelivery.price;

      emit(initState.copyWith(
        addressDelivery: BasketAddressDataModel(
          address: address,
          zip: zip,
          cityId: cityId,
          adrId: id,
        ),
        delivery: delivery,
        selectIndexAddress: event.index,
        isUponReceipt: cityId == '7700000000000',
      ));
    });
  }

  Future<void> _deleteAddressDelivery(
    DeleteAddressDeliveryGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      CalculationCostDeliveryDataModel? calculationCostDelivery;
      int delivery = 0;
      int selectIndexAddress =
          initState.deliveryInfo?.address.indexWhere((item) => item.id == event.id) ?? 0;

      emit(initState.copyWith(
        deleteIndexAddress: selectIndexAddress,
        isLoadDeleteAddress: true,
      ));

      await _locationRepository.deleteDeliveryAddress(
        id: event.id,
      );

      DeliveryDataModel deliveryInfo = await _locationRepository.getDelivery();

      if (deliveryInfo.address.isNotEmpty) {
        calculationCostDelivery = await _locationRepository.calculationCostDelivery(
          zipcode: deliveryInfo.address.first.zip,
          sum: initState.amountPaid,
          cityId: deliveryInfo.address.first.cityId,
        );
        delivery = calculationCostDelivery.price;
      }

      emit(initState.copyWith(
        delivery: delivery != 0 ? delivery : null,
        isUponReceipt: deliveryInfo.address.isNotEmpty
            ? deliveryInfo.address.first.cityId == '7700000000000'
            : true,
        selectIndexAddress:
            selectIndexAddress == initState.selectIndexAddress ? 0 : initState.selectIndexAddress,
        deliveryInfo: deliveryInfo,
        isLoadDeleteAddress: false,
        addressDelivery: BasketAddressDataModel(
          address: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.addr : '',
          zip: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.zip : '',
          cityId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.cityId : '',
          adrId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.id : '',
        ),
      ));
    });
  }

  Future<void> _changeUidPickUpPoint(
    ChangeUidPickUpPointGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      await _locationRepository.addPickUpPoint(pickId: event.uidPickUpPoint);
      BoutiqueDataModel boutique = _updateDataService.boutiques.firstWhere(
        (item) => item.uidStore == event.uidPickUpPoint,
      );
      logging(boutique.toString(), stackTrace: StackTrace.current);

      emit(initState.copyWith(
        uidPickUpPoint: event.uidPickUpPoint.isNotEmpty
            ? event.uidPickUpPoint
            : initState.boutiques.data.first.uidStore,
        boutique: boutique,
        address: boutique.name,
      ));
    });
  }

  Future<void> _changePaymentType(
    ChangePaymentTypeGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        typePay: event.typePay,
      ));
    });
  }
}
