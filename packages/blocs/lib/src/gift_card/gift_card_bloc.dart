import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'gift_card_bloc.freezed.dart';
part 'gift_card_event.dart';
part 'gift_card_state.dart';

class GiftCardBloc extends Bloc<GiftCardEvent, GiftCardState> {
  final CatalogRepository _catalogRepository;
  final UpdateDataService _updateDataService;
  final StoreVersionAppRepository _storeVersionAppRepository;

  GiftCardBloc(
    this._catalogRepository,
    this._updateDataService,
    this._storeVersionAppRepository,
  ) : super(const GiftCardState.init()) {
    on<GiftCardEvent>(
      (event, emit) => event.map(
        preloadData: (event) => _preloadData(event, emit),
        createOrder: (event) => _createOrder(event, emit),
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

    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    } else {
      appStoreInfoVersion = result.version.android;
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
        log(result.e);
        if (result.r == '1') {
          emit(
            GiftCardState.createOrderSuccessfully(
              orderId: result.id,
            ),
          );
        } else {
          emit(
            initState.copyWith(
              isLoadCreateOrder: false,
              creatOrderMessage: result.e,
            ),
          );
        }
      },
    );
  }
}
