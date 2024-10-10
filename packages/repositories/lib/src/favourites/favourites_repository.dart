import 'package:api_models/api_models.dart';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

class FavouritesRepository {
  final FavouritesService _favouritesService;
  final CatalogRepository _catalogRepository;
  final BasketRepository _basketRepository;
  final SharedPreferencesService _sharedPreferencesService;

  FavouritesRepository(
    this._favouritesService,
    this._catalogRepository,
    this._basketRepository,
    this._sharedPreferencesService,
  );

  Future<FavouritesInfoDataModel> addFavouriteProdcut({
    required String code,
  }) async {
    final productToBasket = await _favouritesService.addFavouriteProdcut(
          code: code,
        ) ??
        FavouritesInfoResponse();

    AppMetrica.reportEvent('Добавление в избранное');

    return productToBasket.toFavouriteProduct();
  }

  Future<FavouritesInfoDataModel> deleteFavouriteProdcut({
    required String code,
  }) async {
    final productToBasket = await _favouritesService.deleteFavouriteProdcut(
          code: code,
        ) ??
        FavouritesInfoResponse();

    AppMetrica.reportEvent('Удаление из избранного');

    return productToBasket.toFavouriteProduct();
  }

  Future<FavouritesDataModel> getFavouritesProdcuts() async {
    final productToBasket =
        await _favouritesService.getFavouritesProdcuts() ?? FavouritesResponse();

    return productToBasket.toFavouritesProducts();
  }

  Future<FavouritesCatalogInfoDataModel> getFavouritesProdcutsInfo({
    FavouritesCatalogProductsRequest? request,
  }) async {
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    final basketInfo = await getBasketInfo(isLocal: !isAuth);
    final productToBasket = await _favouritesService.getFavouritesProdcutsInfo(
          request: FavouritesCatalogProductsRequest(
            favourites: request?.favourites ?? [],
            filters: request?.filters ?? [],
          ),
        ) ??
        FavouritesCatalogInfoResponse();

    return productToBasket.toFavouritesProdcutsInfo(basketInfo);
  }

  Future<BasketInfoDataModel> getBasketInfo({
    bool isLocal = true,
  }) async {
    List<BasketInfoItemDataModel> basket = [];
    BasketInfoDataModel? basketInfo;
    if (isLocal) {
      final shopping = _catalogRepository.getShoppingCartProducts();
      for (int i = 0; i < shopping.length; i++) {
        basket.add(BasketInfoItemDataModel(
          code: shopping[i].code,
          sku: shopping[i].sku.contains('-') ? shopping[i].sku : '',
          count: shopping[i].count,
          titleScreen: shopping[i].titleScreen,
          searchQuery: shopping[i].searchQuery,
          typeAddProductToShoppingCart: shopping[i].typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart: shopping[i].identifierAddProductToShoppingCart,
          sectionCategoriesPath: shopping[i].sectionCategoriesPath,
          productCategoriesPath: shopping[i].productCategoriesPath,
        ));
      }
      basketInfo = BasketInfoDataModel(
        basket: basket,
        r: '1',
        e: '',
      );
    } else {
      basketInfo = await _basketRepository.getProductToBasket();
    }

    return basketInfo;
  }
}

extension on FavouritesCatalogInfoResponse {
  FavouritesCatalogInfoDataModel toFavouritesProdcutsInfo(BasketInfoDataModel basketInfo) {
    return FavouritesCatalogInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      userDiscount: int.parse(userDiscount ?? '0'),
      h1: h1 ?? '',
      count: count ?? '',
      countFilter: countFilter ?? '',
      filter: List<FilterInfoDataModel>.from(filter?.map((item) {
            return FilterInfoDataModel(
              id: item.n ?? '',
              title: item.n ?? '',
              typeFilter: item.n ?? '',
              isSearch: (item.v?.length ?? 0) > 10,
              items: item.v?.map((element) {
                    return FilterItemDataModel(
                      id: int.parse(element.id ?? '0'),
                      value: element.n ?? '',
                      typeFilter: item.typeFilter ?? '',
                    );
                  }).toList() ??
                  [],
            );
          }) ??
          []),
      products: List<ProductDataModel>.from(
        products?.map(
              (item) => ProductDataModel(
                id: int.parse(item.c ?? '0'),
                title: item.n ?? '',
                images:
                    item.sl?.map((element) => 'https://slepayakurica.ru$element').toList() ?? [],
                brend: item.b ?? '',
                category: item.n ?? '',
                size: [],
                lensDiameter: 0,
                price: int.parse(item.p ?? '0'),
                templeLength: 0,
                country: '',
                variants: [],
                maximumCashback: item.ca ?? 0,
                maximumPersonalDiscount: item.dv ?? 0,
                yourPrice: item.pc ?? 0,
                isYourPriceDisplayed: int.parse(item.p ?? '0') != (item.pc ?? 0),
                pb: int.parse(item.pb ?? '0'),
                isShop: basketInfo.basket
                    .where(
                      (element) => element.code == (item.c ?? ''),
                    )
                    .isNotEmpty,
                sz: [],
                promo: item.promo ?? '',
                promoValue: item.promoValue ?? 0,
              ),
            ) ??
            [],
      ),
    );
  }
}

extension on FavouritesInfoResponse {
  FavouritesInfoDataModel toFavouriteProduct() {
    return FavouritesInfoDataModel(
      r: r ?? '',
      e: e ?? '',
    );
  }
}

extension on FavouritesResponse {
  FavouritesDataModel toFavouritesProducts() {
    return FavouritesDataModel(
      code: code ?? '',
      sku: sku ?? '',
      favorites: favorites ?? [],
      errorMessage: errorMessage ?? '',
    );
  }
}
