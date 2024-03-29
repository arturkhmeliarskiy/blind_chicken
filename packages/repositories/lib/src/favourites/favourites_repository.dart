import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class FavouritesRepository {
  final FavouritesService _favouritesService;

  FavouritesRepository(
    this._favouritesService,
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
    final productToBasket = await _favouritesService.getFavouritesProdcutsInfo(
          request: FavouritesCatalogProductsRequest(
            favourites: request?.favourites ?? [],
            filters: request?.filters ?? [],
          ),
        ) ??
        FavouritesCatalogInfoResponse();

    return productToBasket.toFavouritesProdcutsInfo();
  }
}

extension on FavouritesCatalogInfoResponse {
  FavouritesCatalogInfoDataModel toFavouritesProdcutsInfo() {
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
                price: item.pbc ?? 0,
                templeLength: 0,
                country: '',
                variants: [],
                maximumCashback: item.ca ?? 0,
                maximumPersonalDiscount: item.dv ?? 0,
                yourPrice: item.pc ?? 0,
                isYourPriceDisplayed: int.parse(item.p ?? '0') != (item.pc ?? 0),
                pb: int.parse(item.pb ?? '0'),
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
