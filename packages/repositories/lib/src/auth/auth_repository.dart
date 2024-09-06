import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class AuthRepository {
  final AuthService _authService;

  AuthRepository(
    this._authService,
  );

  Future<AuthDataModel> auth({
    required String tel,
  }) async {
    final listBoutiques = await _authService.auth(
          tel: tel,
        ) ??
        AuthResponse();
    return listBoutiques.toAuth();
  }

  Future<AuthDataModel> checkCaptcha({
    required String tel,
    required String captchaValue,
    required String captchaCode,
  }) async {
    final listBoutiques = await _authService.checkCaptcha(
          tel: tel,
          captchaCode: captchaCode,
          captchaValue: captchaValue,
        ) ??
        AuthResponse();
    return listBoutiques.toAuth();
  }

  Future<AuthDataModel> changeName({
    required String name,
  }) async {
    final listBoutiques = await _authService.changeName(
          name: name,
        ) ??
        AuthResponse();
    return listBoutiques.toAuth();
  }

  Future<AuthDataModel> changeEmail({
    required String email,
  }) async {
    final listBoutiques = await _authService.changeEmail(
          email: email,
        ) ??
        AuthResponse();
    return listBoutiques.toAuth();
  }

  Future<UserInfoDataModel> checkSmsAndAuthorization({
    required String tel,
    required String code,
    required List<String> favorites,
    required List<BasketInfoItemDataModel> basket,
  }) async {
    final listBoutiques = await _authService.checkSmsAndAuthorization(
          request: UserInformationRequest(
            code: code,
            tel: tel,
            favorites: favorites,
            basket: List<BasketInfoRequest>.from(basket.map((item) {
              return BasketInfoRequest(
                code: item.code,
                sku: item.sku,
                count: item.count,
                type: item.typeAddProductToShoppingCart,
                identifier: item.identifierAddProductToShoppingCart,
                sectionCategoriesPath: item.sectionCategoriesPath,
                productCategoriesPath: item.productCategoriesPath,
                titleScreen: item.titleScreen,
                searchQuery: item.searchQuery,
              );
            })),
          ),
        ) ??
        UserInfoResponse();
    return listBoutiques.toUserInfo();
  }

  Future<UserInfoDataModel> getUserInfo() async {
    final listBoutiques = await _authService.getUserInfo() ?? UserInfoResponse();
    return listBoutiques.toUserInfo();
  }

  Future<OrdersBlankDataModel> getListOrdersBlank({
    String? nav,
  }) async {
    final ordersBlank = await _authService.getListOrdersBlank(nav: nav) ?? OrdersBlankResponse();
    return ordersBlank.toListOrdersBlank();
  }

  Future<OrderBlankPdfDataModel> getOrderBlank({required String id}) async {
    final orderBlank = await _authService.getOrderBlank(id: id) ?? OrderBlankPdfResponse();
    return OrderBlankPdfDataModel(
      r: orderBlank.r ?? '',
      message: orderBlank.message ?? '',
      pdf: orderBlank.pdf ?? '',
    );
  }

  Future<OrdersBlankDataModel> getListTailoringBlank({
    String? nav,
  }) async {
    final tailoringBlank =
        await _authService.getListTailoringBlank(nav: nav) ?? OrdersBlankResponse();
    return tailoringBlank.toListOrdersBlank();
  }

  Future<OrderBlankPdfDataModel> getTailoringBlank({required String id}) async {
    final tailoringBlank = await _authService.getTailoringBlank(id: id) ?? OrderBlankPdfResponse();
    return OrderBlankPdfDataModel(
      r: tailoringBlank.r ?? '',
      message: tailoringBlank.message ?? '',
      pdf: tailoringBlank.pdf ?? '',
    );
  }

  Future<AuthDataModel> checkDiscount() async {
    final listBoutiques = await _authService.checkDiscount() ?? AuthResponse();
    return listBoutiques.toAuth();
  }
}

extension on OrdersBlankResponse {
  OrdersBlankDataModel toListOrdersBlank() {
    return OrdersBlankDataModel(
      r: r ?? '',
      message: message ?? '',
      orders: List<OrderBlankDataModel>.from(
        orders?.map(
              (item) {
                return OrderBlankDataModel(
                  date: item.date ?? '',
                  id: item.id ?? '',
                  number: item.number ?? '',
                );
              },
            ) ??
            [],
      ).toList(),
    );
  }
}

extension on AuthResponse {
  AuthDataModel toAuth() {
    return AuthDataModel(
      r: r ?? '',
      errorMessage: errorMessage ?? '',
      captcha: CapthaDataModel(
        img: captcha?.img ?? '',
        code: captcha?.code ?? '',
      ),
      seconds: seconds ?? 0,
      send: send ?? '',
    );
  }
}

extension on UserInfoResponse {
  UserInfoDataModel toUserInfo() {
    return UserInfoDataModel(
      r: r ?? '',
      errorMessage: errorMessage ?? '',
      user: UserDataModel(
        sumBuy: user?.sumBuy ?? 0,
        phone: user?.phone ?? '',
        discount: user?.discount ?? 0,
        name: user?.name ?? '',
        email: user?.email ?? '',
        message: user?.message ?? '',
        nextDiscount: user?.nextDiscount ?? 0,
        buyForNext: user?.buyForNext ?? 0,
        virtualcardscod: user?.virtualcardscod ?? '',
        schemLoyalty: List<SchemLoyaltyDataModel>.from(user?.schemLoyalty?.map((item) {
              return SchemLoyaltyDataModel(
                discount: item.discount ?? 0,
                value: item.value ?? 0,
              );
            }) ??
            []),
        activeBonus: user?.activeBonus ?? 0,
        allBonus: user?.allBonus ?? 0,
        rest: user?.rest ?? 0,
        limit: user?.limit ?? 0,
      ),
    );
  }
}
