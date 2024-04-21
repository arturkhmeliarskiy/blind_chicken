import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'boutiques_bloc.freezed.dart';
part 'boutiques_event.dart';
part 'boutiques_state.dart';

class BoutiquesBloc extends Bloc<BoutiquesEvent, BoutiquesState> {
  final BoutiquesRepository _boutiquesRepository;
  final UpdateDataService _updateDataService;
  final AppStoreInfoRepository _appStoreInfoRepository;
  List<BoutiqueDataModel> _boutiques = [];

  BoutiquesBloc(
    this._boutiquesRepository,
    this._updateDataService,
    this._appStoreInfoRepository,
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
    final boutiques = await _boutiquesRepository.getBoutiques();
    _updateDataService.boutiques = boutiques.data;
    _boutiques = boutiques.data;
    emit(
      BoutiquesState.preloadDataCompleted(
        boutiques: _boutiques,
        isUpdateVersionApp: false,
        isNotification: false,
      ),
    );
  }

  Future<void> _getInfoBoutique(
    GetInfoBoutiquesEvent event,
    Emitter<BoutiquesState> emit,
  ) async {
    emit(const BoutiquesState.load());
    bool isUpdateVersionApp = false;
    final detailsBoutique = await _boutiquesRepository.getInfoBoutique(
      uid: event.uid,
    );
    final boutiqueInfo = await _boutiquesRepository.getInfoBoutiqueDetail(
      uid: event.uid,
    );

    final appStoreInfoIOs = await _appStoreInfoRepository.checkiOSVersion();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoIOs.appStroreVersion.isNotEmpty && Platform.isIOS) {
      final appStoreIOsVersion = int.parse(appStoreInfoIOs.appStroreVersion.replaceAll('.', ''));
      final packageInfoIOsVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreIOsVersion > packageInfoIOsVersion) {
        isUpdateVersionApp = true;
      }
    }

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
