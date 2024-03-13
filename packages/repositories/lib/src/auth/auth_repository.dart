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
}

extension on AuthResponse {
  AuthDataModel toAuth() {
    return AuthDataModel(
      r: r ?? '',
      message: message ?? '',
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
      message: message ?? '',
      user: UserDataModel(
        sumBuy: user?.sumBuy ?? 0,
        phone: user?.phone ?? '',
        discount: user?.discount ?? 0,
        name: user?.name ?? '',
        email: user?.email ?? '',
        message: user?.message ?? '',
        nextDiscount: user?.nextDiscount ?? 0,
        buyForNext: user?.buyForNext ?? 0,
        schemLoyalty: List<SchemLoyaltyDataModel>.from(user?.schemLoyalty?.map((item) {
              return SchemLoyaltyDataModel(
                discount: item.discount ?? 0,
                value: item.value ?? 0,
              );
            }) ??
            []),
        activeBonus: user?.activeBonus ?? 0,
        allBonus: user?.allBonus ?? 0,
      ),
    );
  }
}
