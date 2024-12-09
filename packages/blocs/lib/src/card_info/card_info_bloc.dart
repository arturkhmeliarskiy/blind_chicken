import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'card_info_event.dart';

part 'card_info_state.dart';

part 'card_info_bloc.freezed.dart';

class CardInfoBloc extends Bloc<CardInfoEvent, CardInfoState> {
  final CatalogRepository _catalogRepository;
  final BasketRepository _basketRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final UpdateDataService _updateDataService;
  final AppMetricaEcommerceService _appMetricaEcommerceService;

  CardInfoBloc(
    this._catalogRepository,
    this._basketRepository,
    this._sharedPreferencesService,
    this._updateDataService,
    this._appMetricaEcommerceService,
  ) : super(const CardInfoState.init()) {
    on<CardInfoEvent>(
      (event, emit) => event.mapOrNull(
        init: (event) => _init(event, emit),
        getProduct: (event) => _getProduct(event, emit),
        goBackProductInfo: (GoBackProductInfoCategotyCardInfoEvent event) =>
            _goBackProductInfo(event, emit),
        getInfoProductSize: (GetInfoProductSizeCardInfoEvent event) =>
            _getInfoProductSize(event, emit),
      ),
    );
  }

  void _init(InitCardInfoEvent event, Emitter<CardInfoState> emit) {
    emit(const CardInfoState.load());
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    emit(CardInfoState.productInfoCard(
        favouritesProducts: event.favouritesProducts,
        listProductsCode: event.listProductsCode,
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        listProdcutsComplect: [],
        listSize: [],
        favouritesProductsId: event.favouritesProductsId,
        isAuth: isAuth,
        isLoadGetSizeProduct: event.isLoadGetSizeProduct,
        //todo
        isBlocBackBotton: true,
        codeProduct: event.codeProduct,
        itemInfo: event.itemInfo,
        product: event.product,
        indexItem: event.indexItem,
        isLoadErrorButton: event.isLoadErrorButton,
        titleScreen: event.titleScreen,
        typeAddProductToShoppingCart: event.typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart:
            event.identifierAddProductToShoppingCart,
        isShopGetSizeProduct: event.isShopGetSizeProduct,
        typeError: 'описание товара'));
  }

  Future<void> _getProduct(
      GetProductCardInfoEvent event, Emitter<CardInfoState> emit) async {
    await state.mapOrNull(productInfoCard: (initState) async {
      SkuProductDataModel? selectSizeProduct;
      bool isShoppingCartDetailsProduct = false;
      String errorMessage = '';
      bool isError = false;
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const CardInfoState.load());
      }

      final basketInfo = await getBasketInfo(isLocal: !isAuth);
      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      final additionalProductsDescriptionStyle =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'style',
      );

      final additionalProductsDescriptionAlso =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'also',
      );

      final additionalProductsDescriptionBrand =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'brand',
      );

      final additionalProductsDescriptionComplect =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'complect',
      );
      List<BasketFullInfoItemDataModel> soppingCart = [];

      if (detailsProduct.sku.length > 1) {
        if (!detailsProduct.sku.first.id.contains('-') &&
            detailsProduct.sku.first.id.length < 10) {
          for (int i = 0; i < detailsProduct.sku.length; i++) {
            if (detailsProduct.sku[i].id == event.code) {
              selectSizeProduct = detailsProduct.sku[i];
            }
          }
        }
        soppingCart = basketInfo.basket
            .where(
              (element) =>
                  int.parse(element.code) == detailsProduct.code &&
                  (element.sku.isNotEmpty
                      ? element.sku == detailsProduct.sku.first.id
                      : true),
            )
            .toList();
      } else {
        soppingCart = basketInfo.basket
            .where(
              (element) => int.parse(element.code) == detailsProduct.code,
            )
            .toList();
        if (soppingCart.isNotEmpty) {
          if (!soppingCart.first.sku.contains('-')) {
            isShoppingCartDetailsProduct = true;
          }
        }
      }

      _appMetricaEcommerceService.viewingProductPage(
        titleScreen: event.titleScreen,
        titleProduct: detailsProduct.name,
        codeProduct: detailsProduct.code.toString(),
        type: event.typeAddProductToShoppingCart,
        identifier: event.identifierAddProductToShoppingCart,
        sectionCategoriesPath: [],
        productCategoriesPath: [],
        priceActual: detailsProduct.price.yourPrice,
        priceOriginal: int.parse(detailsProduct.price.pb),
        internalComponentsActualPrice: detailsProduct.sku.isNotEmpty
            ? [
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(detailsProduct.price.yourPrice),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.value
                      : '',
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(detailsProduct.price.yourPrice),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.id
                      : '',
                ),
              ]
            : [],
        internalComponentsOriginalPrice: detailsProduct.sku.isNotEmpty
            ? [
                AppMetricaECommerceAmount(
                  amount: Decimal.parse(detailsProduct.price.pb),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.value
                      : '',
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.parse(detailsProduct.price.pb),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.id
                      : '',
                ),
              ]
            : [],
      );

      if (detailsProduct.errorMessage.isNotEmpty ||
          basketInfo.errorMessage.isNotEmpty ||
          additionalProductsDescriptionStyle.errorMessage.isNotEmpty ||
          additionalProductsDescriptionAlso.errorMessage.isNotEmpty ||
          additionalProductsDescriptionComplect.errorMessage.isNotEmpty) {
        isError = true;
        errorMessage = MessageInfo.errorMessage;
      } else {
        if (!(event.isUpdate ?? false)) {
          listProductsCode.add(event.code);
        }
      }
      emit(initState.copyWith(
        isError: isError,
        errorMessage: errorMessage,
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProdcutsComplect: additionalProductsDescriptionComplect.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isShoppingCart: soppingCart.isNotEmpty,
        selectSizeProduct: selectSizeProduct ?? event.size,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        isBlocBackBotton: false,
        codeProduct: event.code,
        titleScreen: event.titleScreen,
        typeAddProductToShoppingCart: event.typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart:
            event.identifierAddProductToShoppingCart,
        typeError: 'описание товара',
      ));
    });
  }  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyCardInfoEvent event,
    Emitter<CardInfoState> emit,
      ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      if (listProductsCode.isNotEmpty) {
        listProductsCode.removeLast();
      }

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const CardInfoState.load());
        final detailsProduct = await _catalogRepository.getDetailsProduct(
          code: listProductsCode.last,
          genderIndex: _updateDataService.selectedIndexGender.toString(),
        );

        final additionalProductsDescriptionStyle =
        await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'style',
        );

        final additionalProductsDescriptionAlso =
        await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'also',
        );

        final additionalProductsDescriptionBrand =
        await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'brand',
        );

        final additionalProductsDescriptionComplect =
        await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'complect',
        );

        emit(initState.copyWith(
          detailsProduct: detailsProduct,
          listProdcutsStyle: additionalProductsDescriptionStyle.products,
          listProdcutsAlso: additionalProductsDescriptionAlso.products,
          listProdcutsBrand: additionalProductsDescriptionBrand.products,
          listProdcutsComplect: additionalProductsDescriptionComplect.products,
          listProductsCode: listProductsCode,
          selectSizeProduct: null,
        ));
      }
    });
  }


  Future<BasketFullInfoDataModel> getBasketInfo({bool isLocal = true}) async {
    List<BasketInfoItemDataModel> basket = [];
    if (isLocal) {
      final shopping = _catalogRepository.getShoppingCartProducts();
      for (int i = 0; i < shopping.length; i++) {
        basket.add(BasketInfoItemDataModel(
          code: shopping[i].code,
          sku: shopping[i].sku.contains('-') ? shopping[i].sku : '',
          count: shopping[i].count,
          titleScreen: shopping[i].titleScreen,
          searchQuery: shopping[i].searchQuery,
          typeAddProductToShoppingCart:
              shopping[i].typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart:
              shopping[i].identifierAddProductToShoppingCart,
          sectionCategoriesPath: shopping[i].sectionCategoriesPath,
          productCategoriesPath: shopping[i].productCategoriesPath,
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
            titleScreen: basketInfo.basket[i].product.titleScreen ?? '',
            searchQuery: basketInfo.basket[i].product.searchQuery ?? '',
            typeAddProductToShoppingCart:
                basketInfo.basket[i].product.typeAddProductToShoppingCart ?? '',
            identifierAddProductToShoppingCart: basketInfo
                    .basket[i].product.identifierAddProductToShoppingCart ??
                '',
            sectionCategoriesPath:
                basketInfo.basket[i].product.sectionCategoriesPath ?? [],
            productCategoriesPath:
                basketInfo.basket[i].product.productCategoriesPath ?? [],
          ),
        );
      }
    }

    return basketInfo;
  }

  Future<void> _getInfoProductSize(
    GetInfoProductSizeCardInfoEvent event,
    Emitter<CardInfoState> emit,
  ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(initState.copyWith(
          isLoadGetSizeProduct: true,
          codeProduct: event.code,
        ));
      }
      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      if (detailsProduct.errorMessage.isEmpty) {
        if (detailsProduct.sku.isNotEmpty) {
          if (detailsProduct.sku.first.id.contains('-') &&
              detailsProduct.sku.first.id.length > 10) {
            emit(CardInfoState.getSizeProduct(
              code: event.code,
              listSize: detailsProduct.sku,
              listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
            ));
          } else {
            if (event.isShop) {
              emit(const CardInfoState.openSoppingCart());
            } else {
              emit(CardInfoState.addProductToSoppingCart(
                code: event.code,
              ));
            }
          }
        } else {
          if (event.isShop) {
            emit(const CardInfoState.openSoppingCart());
          } else {
            emit(CardInfoState.addProductToSoppingCart(
              code: event.code,
            ));
          }
        }
      }

      emit(initState.copyWith(
        detailsProduct: detailsProduct.errorMessage.isNotEmpty
            ? initState.detailsProduct
            : detailsProduct,
        listSize: detailsProduct.sku,
        isLoadGetSizeProduct: false,
        codeProduct: event.code,
        isError: detailsProduct.errorMessage.isNotEmpty,
        errorMessage: detailsProduct.errorMessage,
        isShopGetSizeProduct: event.isShop,
        typeError: 'выбор размера описание товара',
        isLoadErrorButton: false,
      ));
    });
  }
}
