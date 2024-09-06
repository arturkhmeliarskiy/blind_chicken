import 'package:models/models.dart';

class UpdateDataService {
  int? _selectedIndexGender;
  bool? _isOpenUpdateModalWindow;
  bool? _isOpenShowModalBottomSheetSearchScreen;
  bool? _isOpenShowModalBottomSheetCatalogScreen;
  bool? _isOpenShowModalBottomSheetFavouritesScreen;
  bool? _isOpenShowModalBottomSheetShoppingCardInfoScreen;
  bool? _isOpenShowModalBottomSheetOrderCardInfoScreen;
  bool? _isScapeUpdateApp;
  bool? _isNotification;
  bool? _isInitApp;
  String? _sectionNotification;
  String? _sortNotification;
  String? _filterSelectNotification;
  String? _idMessageNotification;
  String? _lastScreen;
  List<String>? _pathHistory;
  List<PaymentItemDataModel>? _payments;
  List<BoutiqueDataModel>? _boutiques;

  String get lastScreen {
    return _lastScreen ?? '';
  }

  set lastScreen(String value) {
    _lastScreen = value;
  }

  String get sectionNotification {
    return _sectionNotification ?? '';
  }

  set idMessageNotification(String value) {
    _idMessageNotification = value;
  }

  String get idMessageNotification {
    return _idMessageNotification ?? '';
  }

  set sectionNotification(String value) {
    _sectionNotification = value;
  }

  String get sortNotification {
    return _sortNotification ?? '';
  }

  set sortNotification(String value) {
    _sortNotification = value;
  }

  String get filterSelectNotification {
    return _filterSelectNotification ?? '';
  }

  set filterSelectNotification(String value) {
    _filterSelectNotification = value;
  }

  int get selectedIndexGender {
    return _selectedIndexGender ?? 1;
  }

  set selectedIndexGender(int value) {
    _selectedIndexGender = value;
  }

  bool get isOpenUpdateModalWindow {
    return _isOpenUpdateModalWindow ?? false;
  }

  set isOpenUpdateModalWindow(bool value) {
    _isOpenUpdateModalWindow = value;
  }

  bool get isOpenShowModalBottomSheetSearchScreen {
    return _isOpenShowModalBottomSheetSearchScreen ?? false;
  }

  set isOpenShowModalBottomSheetSearchScreen(bool value) {
    _isOpenShowModalBottomSheetSearchScreen = value;
  }

  bool get isOpenShowModalBottomSheetCatalogScreen {
    return _isOpenShowModalBottomSheetCatalogScreen ?? false;
  }

  set isOpenShowModalBottomSheetCatalogScreen(bool value) {
    _isOpenShowModalBottomSheetCatalogScreen = value;
  }

  bool get isOpenShowModalBottomSheetFavouritesScreen {
    return _isOpenShowModalBottomSheetFavouritesScreen ?? false;
  }

  set isOpenShowModalBottomSheetFavouritesScreen(bool value) {
    _isOpenShowModalBottomSheetFavouritesScreen = value;
  }

  bool get isOpenShowModalBottomSheetShoppingCardInfoScreen {
    return _isOpenShowModalBottomSheetShoppingCardInfoScreen ?? false;
  }

  set isOpenShowModalBottomSheetShoppingCardInfoScreen(bool value) {
    _isOpenShowModalBottomSheetShoppingCardInfoScreen = value;
  }

  bool get isOpenShowModalBottomSheetOrderCardInfoScreen {
    return _isOpenShowModalBottomSheetOrderCardInfoScreen ?? false;
  }

  set isOpenShowModalBottomSheetOrderCardInfoScreen(bool value) {
    _isOpenShowModalBottomSheetOrderCardInfoScreen = value;
  }

  bool get isNotification {
    return _isNotification ?? false;
  }

  set isNotification(bool value) {
    _isNotification = value;
  }
  
  bool get isScapeUpdateApp {
    return _isScapeUpdateApp ?? false;
  }

  set isScapeUpdateApp(bool value) {
    _isScapeUpdateApp = value;
  }

  bool get isInitApp {
    return _isInitApp ?? false;
  }

  set isInitApp(bool value) {
    _isInitApp = value;
  }

  List<PaymentItemDataModel> get payments {
    return _payments ?? [];
  }

  set payments(List<PaymentItemDataModel> value) {
    _payments = value;
  }

  List<BoutiqueDataModel> get boutiques {
    return _boutiques ?? [];
  }

  set boutiques(List<BoutiqueDataModel> name) {
    _boutiques = name;
  }

  List<String> get pathHistory {
    return _pathHistory ?? [];
  }

  set pathHistory(List<String> value) {
    _pathHistory = value;
  }
}
