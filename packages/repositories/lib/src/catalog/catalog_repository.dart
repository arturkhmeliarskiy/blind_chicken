import 'dart:async';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';
import 'package:shared/shared.dart';

class CatalogRepository {
  final CatalogService _catalogService;
  final ConverterService _converterService;
  final DeviceInfoService _deviceInfoService;
  final ProductsFavouritesService _productsHiveService;

  StreamController streamController = StreamController.broadcast();

  CatalogRepository(
    this._catalogService,
    this._converterService,
    this._deviceInfoService,
    this._productsHiveService,
  );

  Future<List<FilterInfoDataModel>> getFilters() async {
    final listFilter = await _catalogService.getFilters();
    return listFilter.toFilters(listFilter);
  }

  Future<List<ProductDataModel>> getProducts() async {
    final listProducts = await _catalogService.getProducts();
    return listProducts.toProducts(listProducts);
  }

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

  Future<List<MenuItemDataModel>> postMenuItems({
    required int auth,
    required String a,
    required int b,
    required int id,
    required String u,
    required int pid,
  }) async {
    final idDevice = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$idDevice");
    final listMenuItems = await _catalogService.postMenuItems(
      auth: auth,
      token: idDevice,
      hashToken: hashToken,
      a: a,
      b: b,
      id: id,
      u: '',
      pid: 0,
    );
    return listMenuItems.toMenuItems(listMenuItems ?? []);
  }

  Future<CatalogDataModel> getCatalogProducts({
    required CatalogProductsRequest request,
  }) async {
    final idDevice = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$idDevice");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p${request.tel}");
    log(idDevice);
    log(hashToken);
    final catalogProducts = await _catalogService.getCatalogProducts(
          request: request.copyWith(
            token: idDevice,
            hashToken: hashToken,
            hashTokenTel: hashTokenTel,
          ),
        ) ??
        CatalogResponse();
    return catalogProducts.toCatalogProducts();
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
          catrgory: item.catrgory ?? '',
          size: item.size ?? [],
          price: item.price ?? 0,
          brend: item.brend ?? '',
          lensDiameter: item.lensDiameter ?? 0,
          templeLength: item.templeLength ?? 0,
          country: item.country ?? '',
          images: item.images ?? [],
          variants: item.variants ?? [],
          maximumCashback: 0,
          maximumPersonalDiscount: 0,
          yourPrice: 0,
        ),
      ),
    );
  }
}

extension on List<MenuItemResponse>? {
  List<MenuItemDataModel> toMenuItems(List<MenuItemResponse> listMenuItems) {
    return List<MenuItemDataModel>.from(
      listMenuItems.map(
        (item) => MenuItemDataModel(
          id: item.id ?? 0,
          idParent: item.idParent ?? 0,
          url: item.url ?? '',
          name: item.name ?? '',
          sub: item.sub ?? 0,
          title: item.title ?? 0,
          brand: item.brand ?? 0,
        ),
      ),
    );
  }
}

extension on List<ProductFavouriteModel> {
  List<ProductDataModel> toFavouritesProducts(List<ProductFavouriteModel> listProducts) {
    return List<ProductDataModel>.from(
      listProducts.map(
        (item) => ProductDataModel(
          id: item.id,
          title: item.title,
          catrgory: item.catrgory,
          size: item.size,
          price: item.price,
          brend: item.brend,
          lensDiameter: item.lensDiameter,
          templeLength: item.templeLength,
          country: item.country,
          images: item.images,
          variants: item.variants,
          maximumCashback: 0,
          maximumPersonalDiscount: 0,
          yourPrice: 0,
        ),
      ),
    );
  }
}

extension on ProductDataModel {
  ProductFavouriteModel toProduct() {
    return ProductFavouriteModel(
      id: id,
      title: title,
      catrgory: catrgory,
      size: size,
      price: price,
      brend: brend,
      lensDiameter: lensDiameter,
      templeLength: templeLength,
      country: country,
      images: images,
      variants: variants,
    );
  }
}

extension on CatalogResponse {
  CatalogDataModel toCatalogProducts() {
    return CatalogDataModel(
      userDiscount: userDiscount ?? '',
      breadcrumbs: BreadcrumbsDataModel(
        women: breadcrumbs?.women ?? '',
        glasses: breadcrumbs?.glasses ?? '',
        optics: breadcrumbs?.optics ?? '',
      ),
      h1: h1 ?? '',
      count: count ?? '',
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
      filter: FilterCatalogDataModel(
        ct: FilterInfoDataModel(
          id: filter?.ct?.v?.isNotEmpty ?? false ? 'ct' : '',
          title: filter?.ct?.n ?? '',
          isSearch: false,
          typeFilter: 'ct',
          items: List<FilterItemDataModel>.from(
            filter?.ct?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 'ct',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        f3: FilterInfoDataModel(
          id: filter?.f3?.v?.isNotEmpty ?? false ? 'f3' : '',
          title: filter?.f3?.n ?? '',
          isSearch: true,
          typeFilter: 'f3',
          items: List<FilterItemDataModel>.from(
            filter?.f3?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 'f3',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        t21: FilterInfoDataModel(
          id: filter?.t21?.v?.isNotEmpty ?? false ? 't21' : '',
          title: filter?.t21?.n ?? '',
          isSearch: false,
          typeFilter: 't21',
          items: List<FilterItemDataModel>.from(
            filter?.t21?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 't21',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        f2: FilterInfoDataModel(
          id: filter?.f2?.v?.isNotEmpty ?? false ? 'f2' : '',
          title: filter?.f2?.n ?? '',
          isSearch: false,
          typeFilter: 'f2',
          items: List<FilterItemDataModel>.from(
            filter?.f2?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 'f2',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        t1: FilterInfoDataModel(
          id: filter?.t1?.v?.isNotEmpty ?? false ? 't1' : '',
          title: filter?.t1?.n ?? '',
          isSearch: true,
          typeFilter: 't1',
          items: List<FilterItemDataModel>.from(
            filter?.t1?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 't1',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        f10: FilterInfoDataModel(
          id: filter?.f10?.v?.isNotEmpty ?? false ? 'f10' : '',
          title: filter?.f10?.n ?? '',
          isSearch: false,
          typeFilter: 'f10',
          items: List<FilterItemDataModel>.from(
            filter?.f10?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 'f10',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        f12: FilterInfoDataModel(
          id: filter?.f12?.v?.isNotEmpty ?? false ? 'f12' : '',
          title: filter?.f12?.n ?? '',
          isSearch: true,
          typeFilter: 'f12',
          items: List<FilterItemDataModel>.from(
            filter?.f10?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 'f12',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        f13: FilterInfoDataModel(
          id: filter?.f13?.v?.isNotEmpty ?? false ? 'f13' : '',
          title: filter?.f13?.n ?? '',
          isSearch: true,
          typeFilter: 'f13',
          items: List<FilterItemDataModel>.from(
            filter?.f13?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 'f13',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        t4: FilterInfoDataModel(
          id: filter?.t4?.v?.isNotEmpty ?? false ? 't4' : '',
          title: filter?.t4?.n ?? '',
          isSearch: false,
          typeFilter: 't4',
          items: List<FilterItemDataModel>.from(
            filter?.t4?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 't4',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
        t9: FilterInfoDataModel(
          id: filter?.t9?.v?.isNotEmpty ?? false ? 't9' : '',
          title: filter?.t9?.n ?? '',
          isSearch: false,
          typeFilter: 't9',
          items: List<FilterItemDataModel>.from(
            filter?.t9?.v
                    ?.map(
                      (item) => FilterItemDataModel(
                        id: int.parse(item.id ?? '0'),
                        value: item.n ?? '',
                        typeFilter: 't9',
                      ),
                    )
                    .toList() ??
                <FilterItemDataModel>[],
          ),
        ),
      ),
      products: List<ProductDataModel>.from(products?.map(
            (item) => ProductDataModel(
              id: int.parse(item.c ?? '0'),
              title: item.n ?? '',
              images: [item.f?.isNotEmpty ?? false ? 'https://slepayakurica.ru${item.f}' : ''],
              brend: item.b ?? '',
              catrgory: item.n ?? '',
              size: [],
              lensDiameter: 0,
              price: item.pbc ?? 0,
              templeLength: 0,
              country: '',
              variants: [],
              maximumCashback: item.ca ?? 0,
              maximumPersonalDiscount: item.dv ?? 0,
              yourPrice: item.pc ?? 0,
            ),
          ) ??
          []),
      r: r ?? '',
      e: e ?? '',
    );
  }
}
