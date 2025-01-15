import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

part 'boutiques_bloc.freezed.dart';
part 'boutiques_event.dart';
part 'boutiques_state.dart';

class BoutiquesBloc extends Bloc<BoutiquesEvent, BoutiquesState> {
  final BoutiquesRepository _boutiquesRepository;
  final UpdateDataService _updateDataService;
  final StoreVersionAppRepository _storeVersionAppRepository;
  List<BoutiqueDataModel> _boutiques = [];

  BoutiquesBloc(
    this._boutiquesRepository,
    this._updateDataService,
    this._storeVersionAppRepository,
  ) : super(const BoutiquesState.init()) {
    on<BoutiquesEvent>(
      (event, emit) => event.map<Future<void>>(
        preloadData: (event) => _init(event, emit),
        getInfoBoutique: (event) => _getInfoBoutique(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitBoutiquesEvent event,
    Emitter<BoutiquesState> emit,
  ) async {
    if (state is ErrorBoutiquesState) {
      emit(BoutiquesState.loadErrorButton());
    }
    final boutiques = await _boutiquesRepository.getBoutiques();
    _updateDataService.boutiques = boutiques.data;
    _boutiques = boutiques.data;
    AppMetrica.reportEvent('Список бутиков');

    if (boutiques.errorMessage?.isNotEmpty ?? false) {
      emit(
        BoutiquesState.error(
          errorMessage: MessageInfo.errorMessage,
        ),
      );
    } else {
      emit(
        BoutiquesState.preloadDataCompleted(
          boutiques: _boutiques,
          isUpdateVersionApp: false,
          isNotification: false,
        ),
      );
    }
  }

  Future<void> _getInfoBoutique(
    GetInfoBoutiquesEvent event,
    Emitter<BoutiquesState> emit,
  ) async {
    if (state is ErrorBoutiquesState) {
      emit(BoutiquesState.loadErrorButton());
    } else {
      emit(const BoutiquesState.load());
    }

    bool isUpdateVersionApp = false;
    String appStoreInfoVersion = '';
    final detailsBoutique = await _boutiquesRepository.getInfoBoutique(
      messageId: event.messageId,
      uid: event.uid,
      path: event.path,
    );
    final boutiqueInfo = await _boutiquesRepository.getInfoBoutiqueDetail(
      uid: event.uid,
      path: event.path,
    );

    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        isUpdateVersionApp = true;
      }
    }

    AppMetrica.reportEvent('Страница бутика');

    if (detailsBoutique.errorMessage.isNotEmpty || boutiqueInfo.errorMessage.isNotEmpty) {
      emit(
        BoutiquesState.error(
          errorMessage: MessageInfo.errorMessage,
          uid: event.uid,
        ),
      );
    } else {
      emit(
        BoutiquesState.preloadDataCompleted(
          boutiques: _boutiques,
          boutiqueDetails: detailsBoutique.data,
          boutiqueInfo: boutiqueInfo.category,
          isUpdateVersionApp: isUpdateVersionApp,
          isNotification: event.isNotification ?? false,
        ),
      );
    }
  }
}
