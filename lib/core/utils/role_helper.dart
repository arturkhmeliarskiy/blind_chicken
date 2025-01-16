import 'package:collection/collection.dart';
import 'package:pimmer_app/model/store.dart';

class RoleHelper {
  static bool mayViewOnboarding = false;
  static bool maySupportUrl = false;
  static bool mayVideo = false;
  static bool mayTasks = false;
  static bool mayLessons = false;
  static bool mayViewProducts = false;
  static bool mayCreateProducts = false;
  static bool mayEditProducts = false;
  static bool mayDeleteProducts = false;
  static bool mayViewOrders = false;
  static bool mayCollaborativeOrderManagement = false;
  static bool mayRestoringCanceledOrders = false;
  static bool mayViewSettings = false;
  static bool mayViewSettingsGeneralInfo = false;
  static bool mayViewSettingsProducts = false;
  static bool mayViewSettingsOrders = false;
  static bool mayViewSettingsPromo = false;
  static bool mayViewSettingsPromoCodes = false;
  static bool mayViewSettingsInfo = false;
  static bool mayViewSettingsAdditionalSettings = false;
  static bool mayViewSettingsTariff = false;
  static bool mayViewSettingsTransactions = false;
  static bool mayViewSettingsCommunity = false;
  static bool mayViewSettingsAnalytics = false;
  static bool mayViewSettingsQR = false;
  static bool mayControlCatalogBasePrice = false;
  static bool mayControlCatalogPrice = false;
  static bool mayControlOrderBasePrice = false;
  static bool mayControlOrderPrice = false;
  static List<Item> availableActiveStatuses = [];

  static clearValues() {
    mayViewOnboarding = false;
    maySupportUrl = false;
    mayVideo = false;
    mayTasks = false;
    mayLessons = false;
    mayViewProducts = false;
    mayCreateProducts = false;
    mayEditProducts = false;
    mayDeleteProducts = false;
    mayViewOrders = false;
    mayCollaborativeOrderManagement = false;
    mayRestoringCanceledOrders = false;
    mayViewSettings = false;
    mayViewSettingsGeneralInfo = false;
    mayViewSettingsProducts = false;
    mayViewSettingsOrders = false;
    mayViewSettingsPromo = false;
    mayViewSettingsPromoCodes = false;
    mayViewSettingsInfo = false;
    mayViewSettingsAdditionalSettings = false;
    mayViewSettingsTariff = false;
    mayViewSettingsTransactions = false;
    mayViewSettingsCommunity = false;
    mayViewSettingsAnalytics = false;
    mayViewSettingsQR = false;
    mayControlCatalogBasePrice = false;
    mayControlCatalogPrice = false;
    mayControlOrderBasePrice = false;
    mayControlOrderPrice = false;
    availableActiveStatuses = [];
  }

  static setValues(Store store) {
    mayViewOnboarding = store.mayViewOnboarding;
    maySupportUrl = store.maySupportUrl;
    mayVideo = store.mayVideo;
    mayTasks = store.mayTasks;
    mayLessons = store.mayLessons;
    mayViewProducts = store.mayViewProducts;
    mayCreateProducts = store.mayCreateProducts;
    mayEditProducts = store.mayEditProducts;
    mayDeleteProducts = store.mayDeleteProducts;
    mayViewOrders = store.mayViewOrders;
    mayCollaborativeOrderManagement = store.mayCollaborativeOrderManagement;
    mayRestoringCanceledOrders = store.mayRestoringCanceledOrders;
    mayViewSettings = store.mayViewSettings;
    mayViewSettingsGeneralInfo = store.mayViewSettingsGeneralInfo;
    mayViewSettingsProducts = store.mayViewSettingsProducts;
    mayViewSettingsOrders = store.mayViewSettingsOrders;
    mayViewSettingsPromo = store.mayViewSettingsPromo;
    mayViewSettingsPromoCodes = store.mayViewSettingsPromoCodes;
    mayViewSettingsInfo = store.mayViewSettingsInfo;
    mayViewSettingsAdditionalSettings = store.mayViewSettingsAdditionalSettings;
    mayViewSettingsTariff = store.mayViewSettingsTariff;
    mayViewSettingsTransactions = store.mayViewSettingsTransactions;
    mayViewSettingsCommunity = store.mayViewSettingsCommunity;
    mayViewSettingsAnalytics = store.mayViewSettingsAnalytics;
    mayViewSettingsQR = store.mayViewSettingsQR;
    mayControlCatalogBasePrice = store.mayControlCatalogBasePrice;
    mayControlCatalogPrice = store.mayControlCatalogPrice;
    mayControlOrderBasePrice = store.mayControlOrderBasePrice;
    mayControlOrderPrice = store.mayControlOrderPrice;
    availableActiveStatuses = store.availableActiveStatuses;
  }

  static bool mayControlOrder(String statusId) {
    return canAccessOrder(statusId, 'control');
  }

  static bool mayViewOrder(String statusId) {
    return canAccessOrder(statusId, 'view');
  }

  static bool canAccessOrder(String statusId, String accessType) {
    final status = availableActiveStatuses.firstWhereOrNull((status) => status.code == statusId);

    if (status != null) {
      final activeControl = status.items.firstWhereOrNull((item) => item.active && item.code == accessType);
      if (activeControl != null) {
        return true;
      }
    }
    return false;
  }
}
