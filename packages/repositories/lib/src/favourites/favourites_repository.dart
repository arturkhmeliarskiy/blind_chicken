import 'package:api_models/api_models.dart';
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

    return productToBasket.toFavouriteProduct();
  }

  Future<FavouritesInfoDataModel> deleteFavouriteProdcut({
    required String code,
  }) async {
    final productToBasket = await _favouritesService.deleteFavouriteProdcut(
          code: code,
        ) ??
        FavouritesInfoResponse();

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

  Future<BasketFullInfoDataModel> getBasketInfo({
    bool isLocal = true,
  }) async {
    List<BasketInfoItemDataModel> basket = [];
    if (isLocal) {
      final shopping = _catalogRepository.getShoppingCartProducts();
      for (int i = 0; i < shopping.length; i++) {
        basket.add(BasketInfoItemDataModel(
          code: shopping[i].code,
          sku: shopping[i].sku.contains('-') ? shopping[i].sku : '',
          count: shopping[i].count,
        ));
      }
    }

    final basketInfo = await _basketRepository.getProductToBasketFullInfo(
      basket: isLocal ? basket : null,
    );

    if (isLocal) {
      for (int i = 0; i < basketInfo.basket.length; i++) {
        _catalogRepository.putShoppingCartProduct(
          i,
          BasketInfoItemDataModel(
            code: basketInfo.basket[i].code,
            sku: basketInfo.basket[i].sku,
            count: basketInfo.basket[i].count,
          ),
        );
      }
    }

    return basketInfo;
  }
}

extension on FavouritesCatalogInfoResponse {
  FavouritesCatalogInfoDataModel toFavouritesProdcutsInfo(BasketFullInfoDataModel basketInfo) {
    return FavouritesCatalogInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      userDiscount: userDiscount ?? '',
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
                images: [item.f?.isNotEmpty ?? false ? 'https://slepayakurica.ru${item.f}' : ''],
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
