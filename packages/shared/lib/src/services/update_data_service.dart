import 'package:models/models.dart';

class UpdateDataService {
  int? _selectedIndexGender;
  bool? _isOpenUpdateModalWindow;
  bool? _isNotification;
  bool? _isInitApp;
  String? _sectionNotification;
  String? _sortNotification;
  String? _filterSelectNotification;
  List<String>? _pathHistory;
  List<PaymentItemDataModel>? _payments;
  List<BoutiqueDataModel>? _boutiques;

  String get sectionNotification {
    return _sectionNotification ?? '';
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
    return _isOpenUpdateModalWindow ?? true;
  }

  set isOpenUpdateModalWindow(bool value) {
    _isOpenUpdateModalWindow = value;
  }

  bool get isNotification {
    return _isNotification ?? false;
  }

  set isNotification(bool value) {
    _isNotification = value;
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
