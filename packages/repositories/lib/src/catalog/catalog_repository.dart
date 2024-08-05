import 'dart:async';

import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

class CatalogRepository {
  final CatalogService _catalogService;
  final ProductsFavouritesService _productsHiveService;
  final ProductsShoppingCartService _productsShoppingCartService;
  final BasketRepository _basketRepository;
  final SharedPreferencesService _sharedPreferencesService;

  StreamController streamController = StreamController.broadcast();

  CatalogRepository(
    this._catalogService,
    this._productsHiveService,
    this._productsShoppingCartService,
    this._basketRepository,
    this._sharedPreferencesService,
  );

  //favourites

  List<ProductDataModel> getFavouritesProducts() {
    final listProducts = _productsHiveService.listProduct();
    return listProducts.toFavouritesProducts(listProducts);
  }

  void addFavouritesProduct(ProductDataModel product) {
    _productsHiveService.addProduct(product.toProduct());
  }

  void putFavouritesProduct(int index, ProductDataModel product) {
    _productsHiveService.putProduct(index, product.toProduct());
  }

  void deleteFavouritesProduct(int index) {
    _productsHiveService.deleteProduct(index);
  }

  void deleteAllFavouritesProducts() {
    _productsHiveService.deleteAllFavouritesProducts();
  }
  //favourites end

  //shopping cart

  List<BasketInfoItemDataModel> getShoppingCartProducts() {
    final listProducts = _productsShoppingCartService.listProduct();
    return listProducts.toShoppingCartProducts(listProducts);
  }

  void addShoppingCartProduct(BasketInfoItemDataModel product) {
    _productsShoppingCartService.addProduct(product.toShoppingProduct());
  }

  void addAllShoppingCartProducts(List<BasketInfoItemDataModel> products) {
    _productsShoppingCartService.addAllProducts(products.toShoppingProducts(products));
  }

  void putShoppingCartProduct(int index, BasketInfoItemDataModel product) {
    _productsShoppingCartService.putProduct(index, product.toShoppingProduct());
  }

  void deleteShoppingCartProduct(int index) {
    _productsShoppingCartService.deleteProduct(index);
  }

  void deleteAllShoppingProducts() {
    _productsShoppingCartService.deleteAllShoppingProducts();
  }

  //end shopping cart

  // menu
  Future<MenuDataModel> postMenuItems({
    required String a,
    required int b,
    required int id,
    required String u,
    required int pid,
  }) async {
    final listMenuItems = await _catalogService.postMenuItems(
          a: a,
          b: b,
          id: id,
          u: '',
          pid: 0,
        ) ??
        MenuResponse();
    return listMenuItems.toMenuItems();
  }

  // end menu

  // get products
  Future<CatalogDataModel> getCatalogProducts({
    required CatalogProductsRequest request,
  }) async {
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    final basketInfo = await getBasketInfo(isLocal: !isAuth);
    final catalogProducts = await _catalogService.getCatalogProducts(
          request: request,
        ) ??
        CatalogResponse();
    return catalogProducts.toCatalogProducts(basketInfo);
  }

  Future<DetailProductDataModel> getDetailsProduct({
    required String code,
    required String genderIndex,
  }) async {
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    final basketInfo = await getDetailsProductBasketInfo(isLocal: !isAuth);
    final detailsProduct = await _catalogService.getDetailsProduct(
          code: code,
        ) ??
        DetailProductResponse();

    return detailsProduct.toDetailsProduct(
      genderIndex,
      basketInfo,
    );
  }

  Future<AdditionalProductsDescriptionDataModel> getAdditionalProductsDescription({
    required String code,
    required String block,
  }) async {
    final detailsProduct = await _catalogService.getAdditionalProductsDescription(
          code: code,
          block: block,
        ) ??
        AdditionalProductsDescriptionResponse();

    return detailsProduct.toAdditionalProductsDescription();
  }

  // end get products

  Future<PaymentOrderDataModel> payGiftCard({
    required CatalogGiftCardRequest request,
  }) async {
    final paymentOrder = await _catalogService.payGiftCard(
          request: request,
        ) ??
        PaymentOrderResponse();

    return paymentOrder.toCreateOrder();
  }

  // search
  Future<CatalogSearchDataModel> searchProducts({
    required String search,
  }) async {
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    final basketInfo = await getBasketInfo(isLocal: !isAuth);
    final paymentOrder = await _catalogService.searchProducts(
          search: search,
        ) ??
        CatalogSearchResponse();

    return paymentOrder.toSearchProducts(basketInfo);
  }

  Future<CatalogSearchInfoDataModel> searchProductsInfo({
    required CatalogSearchProductsRequest request,
  }) async {
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    final basketInfo = await getBasketInfo(isLocal: !isAuth);
    final paymentOrder = await _catalogService.searchProductsInfo(
          request: request,
        ) ??
        CatalogSearchInfoResponse();

    return paymentOrder.toSearchProductsInfo(basketInfo);
  }
  // end search

  // brands
  Future<BrandsDataModel> getBrands({
    required int gender,
  }) async {
    final brands = await _catalogService.getBrands(
          gender: gender,
        ) ??
        BrandsResponse();

    return brands.toGetBrands();
  }
  // end brands

  // top baanner
  Future<TopBannerDataModel> postTopBanner() async {
    final topBanner = await _catalogService.postTopBanner() ?? TopBannerResponse();

    return topBanner.toTopBanner();
  }
  // end top baanner

  Future<BasketInfoDataModel> getBasketInfo({
    bool isLocal = true,
  }) async {
    List<BasketInfoItemDataModel> basket = [];
    BasketInfoDataModel? basketInfo;
    if (isLocal) {
      final shopping = getShoppingCartProducts();
      for (int i = 0; i < shopping.length; i++) {
        basket.add(BasketInfoItemDataModel(
          code: shopping[i].code,
          sku: shopping[i].sku.contains('-') ? shopping[i].sku : '',
          count: shopping[i].count,
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

  Future<BasketFullInfoDataModel> getDetailsProductBasketInfo({
    bool isLocal = true,
  }) async {
    List<BasketInfoItemDataModel> basket = [];
    if (isLocal) {
      final shopping = getShoppingCartProducts();
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
        putShoppingCartProduct(
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

extension on CatalogSearchInfoResponse {
  CatalogSearchInfoDataModel toSearchProductsInfo(BasketInfoDataModel basketInfo) {
    return CatalogSearchInfoDataModel(
      products: List<ProductDataModel>.from(
        products?.map(
              (item) => ProductDataModel(
                id: int.parse(item.c ?? '0'),
                title: item.n ?? '',
                images: [item.f?.isNotEmpty ?? false ? 'https://slepayakurica.ru${item.f}' : ''],
                brend: item.b ?? '',
                category: item.n ?? '',
                pb: int.parse(item.pb ?? '0'),
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
                isShop: basketInfo.basket
                    .where(
                      (element) => element.code == (item.c ?? ''),
                    )
                    .isNotEmpty,
              ),
            ) ??
            [],
      ),
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
      userDiscount: int.parse(userDiscount ?? '0'),
      h1: h1 ?? '',
      count: count ?? '',
      countFilter: countFilter ?? '',
      r: r ?? '',
      e: e ?? '',
    );
  }
}

extension on CatalogSearchResponse {
  CatalogSearchDataModel toSearchProducts(BasketInfoDataModel basketInfo) {
    return CatalogSearchDataModel(
      productsCount: productsCount ?? 0,
      sectionsCount: sectionsCount ?? 0,
      products: List<ProductDataModel>.from(
        products?.map(
              (item) => ProductDataModel(
                id: int.parse(item.c ?? '0'),
                title: item.n ?? '',
                images: [item.f?.isNotEmpty ?? false ? 'https://slepayakurica.ru${item.f}' : ''],
                brend: item.b ?? '',
                category: item.n ?? '',
                size: [],
                pb: int.parse(item.pb ?? '0'),
                lensDiameter: 0,
                price: int.parse(item.p ?? '0'),
                templeLength: 0,
                country: '',
                variants: [],
                maximumCashback: item.ca ?? 0,
                maximumPersonalDiscount: item.dv ?? 0,
                yourPrice: item.pc ?? 0,
                isYourPriceDisplayed: int.parse(item.p ?? '0') != (item.pc ?? 0),
                isShop: basketInfo.basket
                    .where(
                      (element) => element.code == (item.c ?? ''),
                    )
                    .isNotEmpty,
              ),
            ) ??
            [],
      ),
      sections: List<CatalogSectionDataModel>.from(
        sections?.map(
              (item) => CatalogSectionDataModel(
                n: item.n ?? '',
                u: item.u ?? '',
                g: item.g ?? '',
              ),
            ) ??
            [],
      ),
    );
  }
}

extension on PaymentOrderResponse {
  PaymentOrderDataModel toCreateOrder() {
    return PaymentOrderDataModel(
      r: r ?? '',
      e: e ?? '',
      id: id ?? 0,
    );
  }
}

extension on List<FilterInfoResponse> {
  List<FilterInfoDataModel> toFilters(List<FilterInfoResponse> listFilter) {
    return List<FilterInfoDataModel>.from(
      listFilter.map(
        (value) => FilterInfoDataModel(
          id: value.id ?? '',
          title: value.title ?? '',
          isSearch: value.isSearch ?? false,
          typeFilter: '',
          items: List<FilterItemDataModel>.from(
            value.items?.map(
                  (item) => FilterItemDataModel(
                    id: item.id ?? 0,
                    value: item.value ?? '',
                    typeFilter: '',
                  ),
                ) ??
                <FilterItemDataModel>[],
          ),
        ),
      ),
    );
  }
}

extension on List<ProductResponse> {
  List<ProductDataModel> toProducts(List<ProductResponse> listProducts) {
    return List<ProductDataModel>.from(
      listProducts.map(
        (item) => ProductDataModel(
          id: item.id ?? 0,
          title: item.title ?? '',
          category: item.category ?? '',
          size: item.size ?? [],
          price: item.price ?? 0,
          pb: item.price ?? 0,
          brend: item.brend ?? '',
          lensDiameter: item.lensDiameter ?? 0,
          templeLength: item.templeLength ?? 0,
          country: item.country ?? '',
          images: item.images ?? [],
          variants: item.variants ?? [],
          maximumCashback: 0,
          maximumPersonalDiscount: 0,
          yourPrice: 0,
          isYourPriceDisplayed: false,
          isShop: false,
        ),
      ),
    );
  }
}

extension on MenuResponse {
  MenuDataModel toMenuItems() {
    return MenuDataModel(
        items: List<MenuItemDataModel>.from(
          items?.map(
                (item) => MenuItemDataModel(
                  id: int.parse(item.id ?? '0'),
                  idParent: int.parse(item.idParent ?? '0'),
                  url: item.url ?? '',
                  name: item.name ?? '',
                  sub: item.sub ?? 0,
                  title: item.title ?? 0,
                  brand: item.brand ?? 0,
                  bold: item.bold ?? 0,
                ),
              ) ??
              [],
        ),
        errorMessage: errorMessage ?? '');
  }
}

extension on List<ProductFavouriteModel> {
  List<ProductDataModel> toFavouritesProducts(List<ProductFavouriteModel> listProducts) {
    return List<ProductDataModel>.from(
      listProducts.map(
        (item) => ProductDataModel(
          id: item.id,
          title: item.title,
          category: item.category,
          size: item.size,
          price: item.price,
          brend: item.brend,
          lensDiameter: item.lensDiameter,
          templeLength: item.templeLength,
          country: item.country,
          images: item.images,
          variants: item.variants,
          pb: item.price,
          maximumCashback: 0,
          maximumPersonalDiscount: 0,
          yourPrice: item.youPrice,
          isYourPriceDisplayed: false,
          isShop: false,
        ),
      ),
    );
  }
}

extension on BrandsResponse {
  BrandsDataModel toGetBrands() {
    return BrandsDataModel(
      brands: List<BrandDataModel>.from(
        brands?.map(
              (item) => BrandDataModel(
                title: item.title ?? '',
                value: List<BrandItemDataModel>.from(
                  item.value?.map(
                        (element) => BrandItemDataModel(
                          n: element.n ?? '',
                          u: element.u ?? '',
                        ),
                      ) ??
                      [],
                ),
              ),
            ) ??
            [],
      ),
      errorMessage: errorMessage ?? '',
    );
  }
}

extension on List<ProductShoppingCartDataModel> {
  List<BasketInfoItemDataModel> toShoppingCartProducts(
      List<ProductShoppingCartDataModel> listProducts) {
    return List<BasketInfoItemDataModel>.from(
      listProducts.map(
        (item) => BasketInfoItemDataModel(
          code: item.code,
          sku: item.sku,
          count: item.count,
        ),
      ),
    );
  }
}

extension on BasketInfoItemDataModel {
  ProductShoppingCartDataModel toShoppingProduct() {
    return ProductShoppingCartDataModel(
      code: code,
      sku: sku,
      count: count,
    );
  }
}

extension on List<BasketInfoItemDataModel> {
  List<ProductShoppingCartDataModel> toShoppingProducts(
    List<BasketInfoItemDataModel> items,
  ) {
    return List<ProductShoppingCartDataModel>.from(
      items.map(
        (item) {
          return ProductShoppingCartDataModel(
            code: item.code,
            sku: item.sku,
            count: item.count,
          );
        },
      ),
    );
  }
}

extension on ProductDataModel {
  ProductFavouriteModel toProduct() {
    return ProductFavouriteModel(
      id: id,
      title: title,
      category: category,
      size: size,
      price: price,
      brend: brend,
      lensDiameter: lensDiameter,
      templeLength: templeLength,
      country: country,
      images: images,
      variants: variants,
      youPrice: yourPrice,
    );
  }
}

extension on CatalogResponse {
  CatalogDataModel toCatalogProducts(BasketInfoDataModel basketInfo) {
    return CatalogDataModel(
      userDiscount: int.parse(userDiscount ?? '0'),
      breadcrumbs: List<CatalogBreadcrumbDataModel>.from(
        breadcrumbs?.map(
              (item) => CatalogBreadcrumbDataModel(
                name: item.name ?? '',
                value: item.value ?? '',
              ),
            ) ??
            [],
      ),
      h1: h1 ?? '',
      count: count ?? '',
      listNext: List<SectionItemDataModel>.from(
        sections?.listNext?.map((item) {
              return SectionItemDataModel(
                name: item.name ?? '',
                value: item.value ?? '',
              );
            }).toList() ??
            [],
      ),
      listPrev: List<SectionItemDataModel>.from(
        sections?.listPrev?.map((item) {
              return SectionItemDataModel(
                name: item.name ?? '',
                value: item.value ?? '',
              );
            }).toList() ??
            [],
      ),
      listThis: List<SectionItemDataModel>.from(
        sections?.listThis?.map((item) {
              return SectionItemDataModel(
                name: item.name ?? '',
                value: item.value ?? '',
              );
            }).toList() ??
            [],
      ),
      sections: SectionsDataModel(
        next: NextDataModel(
          frames: sections?.next?.frames ?? '',
          sunglasses: sections?.next?.sunglasses ?? '',
          skiMasks: sections?.next?.skiMasks ?? '',
        ),
        prev: PrevDataModel(
          optics: sections?.prev?.optics ?? '',
        ),
        thiss: ThisDataModel(
          glasses: sections?.thiss?.glasses ?? '',
        ),
      ),
      countFilter: '',
      filter: List<FilterInfoDataModel>.from(filter?.map((item) {
            return FilterInfoDataModel(
              id: item.n ?? '',
              title: item.n ?? '',
              typeFilter: item.typeFilter ?? '',
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
      products: List<ProductDataModel>.from(products?.map(
            (item) => ProductDataModel(
              id: int.parse(item.c ?? '0'),
              title: item.n ?? '',
              images: [item.f?.isNotEmpty ?? false ? 'https://slepayakurica.ru${item.f}' : ''],
              brend: item.b ?? '',
              category: item.n ?? '',
              size: [],
              pb: int.parse(item.pb ?? '0'),
              lensDiameter: 0,
              price: int.parse(item.p ?? '0'),
              templeLength: 0,
              country: '',
              isShop: basketInfo.basket
                  .where(
                    (element) => element.code == (item.c ?? ''),
                  )
                  .isNotEmpty,
              variants: [],
              maximumCashback: item.ca ?? 0,
              maximumPersonalDiscount: item.dv ?? 0,
              yourPrice: item.pc ?? 0,
              isYourPriceDisplayed: int.parse(item.p ?? '0') != (item.pc ?? 0),
            ),
          ) ??
          []),
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
    );
  }
}

extension on DetailProductResponse {
  DetailProductDataModel toDetailsProduct(
    String genderIndex,
    BasketFullInfoDataModel basketInfo,
  ) {
    final sectionsInfo = _sections(sections ?? [], genderIndex);
    List<SkuProductDataModel> skuToSoppingCart = [];
    for (int i = 0; i < basketInfo.basket.length; i++) {
      if (basketInfo.basket[i].code == (code ?? 0).toString()) {
        skuToSoppingCart.add(
          SkuProductDataModel(
            id: basketInfo.basket[i].sku,
            value: basketInfo.basket[i].skuName,
          ),
        );
      }
    }
    return DetailProductDataModel(
      code: code ?? 0,
      photo: PhotoDataModel(
        full: photo?.full ?? [],
        mini: photo?.mini ?? [],
        orig: photo?.orig ?? [],
      ),
      breadcrumb: List<BreacumbProductDataModel>.from(
        breadcrumb?.map(
              (item) => BreacumbProductDataModel(
                name: item.name ?? '',
                value: item.value ?? '',
              ),
            ) ??
            [],
      ),
      name: name ?? '',
      brand: BrandProductDataModel(
        id: brand?.id ?? '',
        n: brand?.n ?? '',
        u: brand?.u ?? '',
      ),
      category: CategoryProductDataModel(
        id: category?.id ?? '',
        n: category?.n ?? '',
        u: category?.u ?? '',
      ),
      option: List<OptionProductDataModel>.from(
        option?.map(
              (item) => OptionProductDataModel(
                c: item.c ?? '',
                n: item.n ?? '',
                f: item.f ?? '',
                b: item.b ?? '',
                ne: item.ne ?? '',
                pr: item.pr ?? '',
                u: item.u ?? '',
                g: item.g ?? '',
                ct: item.ct ?? '',
              ),
            ) ??
            [],
      ),
      sku: List<SkuProductDataModel>.from(
        sku?.map(
              (item) => SkuProductDataModel(
                id: item.id ?? '',
                value: item.value ?? '',
              ),
            ) ??
            [],
      ),
      skuToSoppingCart: skuToSoppingCart,
      stock: List<StockProductDataModel>.from(
        stock?.map(
              (item) => StockProductDataModel(
                id: item.id ?? '',
                list: item.list ?? [],
              ),
            ) ??
            [],
      ),
      sections: sectionsInfo.isNotEmpty
          ? sectionsInfo
          : _sections(
              sections ?? [],
              sections?.first.name ?? '1',
            ),
      place: PlaceProductDataModel(
        b: place?.b ?? 0,
        s: place?.s ?? 0,
      ),
      char: List<CharProductDataModel>.from(
        char?.map((item) {
              return CharProductDataModel(
                name: item.name ?? '',
                value: item.value ?? '',
              );
            }) ??
            [],
      ),
      text: text ?? '',
      quantity: quantity ?? 0,
      art: art ?? '',
      userDiscount: userDiscount ?? 0,
      product: ProductDataModel(
        id: code ?? 0,
        title: name ?? '',
        category: category?.n ?? '',
        size: [],
        price: int.parse(price?.p ?? '0'),
        yourPrice: price?.pc ?? 0,
        pb: int.parse(price?.pb ?? '0'),
        brend: brand?.n ?? '',
        lensDiameter: 0,
        templeLength: 0,
        country: '',
        images: photo?.mini ?? [],
        variants: [],
        maximumCashback: price?.cashback ?? 0,
        maximumPersonalDiscount: price?.discountVal ?? 0,
        isYourPriceDisplayed: int.parse(price?.p ?? '0') != (price?.pc ?? 0),
        isShop: skuToSoppingCart.isNotEmpty,
      ),
      price: PriceProductDataModel(
        p: price?.p ?? '0',
        pc: (price?.pc ?? 0).toString(),
        pb: price?.pb ?? '0',
        yourPrice: price?.pc ?? 0,
        price: price?.pbc ?? 0,
        bonusGift: price?.bonusGift ?? 0,
        bonusYear: price?.bonusYear ?? 0,
        discountVal: price?.discountVal ?? 0,
        cashback: price?.cashback ?? 0,
        bonusLoyal: price?.bonusLoyal ?? 0,
      ),
      r: r ?? '',
      e: e ?? '',
      userBuyForNextDiscount: userBuyForNextDiscount ?? 0,
      userNextDiscount: userNextDiscount ?? 0,
      userBuyForNextDiscountVal: userBuyForNextDiscountVal ?? 0,
      errorMessage: errorMessage ?? '',
    );
  }
}

List<SectionsProductDataModel> _sections(
  List<SectionsProductResponse> sections,
  String genderIndex,
) {
  List<SectionsProductDataModel> result = [];

  for (int i = 0; i < sections.length; i++) {
    if ((sections[i].name ?? '') == genderIndex) {
      result.add(
        SectionsProductDataModel(
          name: sections[i].name ?? '',
          list: List<SectionItemProductDataModel>.from(
            sections[i].list?.map(
                  (value) {
                    return SectionItemProductDataModel(
                      n: value.n ?? '',
                      u: value.u ?? '',
                    );
                  },
                ) ??
                [],
          ),
        ),
      );
    }
  }
  return result;
}

extension on AdditionalProductsDescriptionResponse {
  AdditionalProductsDescriptionDataModel toAdditionalProductsDescription() {
    return AdditionalProductsDescriptionDataModel(
      name: name ?? '',
      products: List<ProductDataModel>.from(
        products?.map((item) {
              return ProductDataModel(
                id: int.parse(item.c ?? '0'),
                title: item.b ?? '',
                images: [item.f?.isNotEmpty ?? false ? 'https://slepayakurica.ru${item.f}' : ''],
                brend: item.b ?? '',
                category: item.n ?? '',
                size: [],
                lensDiameter: 0,
                price: int.parse(item.p ?? '0'),
                pb: int.parse(item.pb ?? '0'),
                yourPrice: item.pc ?? 0,
                templeLength: 0,
                country: '',
                variants: [],
                maximumCashback: item.ca ?? 0,
                maximumPersonalDiscount: item.dv ?? 0,
                isYourPriceDisplayed: int.parse(item.p ?? '0') != (item.pc ?? 0),
                isShop: false,
              );
            }) ??
            [],
      ),
      errorMessage: errorMessage ?? '',
    );
  }
}

extension on TopBannerResponse {
  TopBannerDataModel toTopBanner() {
    return TopBannerDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      data: TopBannerInfoDataModel(
        title: data?.title ?? '',
        colorText: data?.colorText ?? '',
        colorBackground: data?.colorBackground ?? '',
        code: data?.code ?? '',
        type: data?.type ?? '',
        section: data?.section ?? '',
        uid: data?.uid ?? '',
        idNews: data?.idNews ?? '',
      ),
    );
  }
}
