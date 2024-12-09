import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';

import 'card_info_screen_view.dart';

@RoutePage()
class CardInfoScreen extends StatelessWidget {
  const CardInfoScreen({
    super.key,
    required this.favouritesProducts,
    required this.listProductsCode,
    required this.favouritesProductsId,
    required this.isLoadGetSizeProduct,
    required this.codeProduct,
    this.itemInfo,
    required this.product,
    this.indexItem,
    this.isLoadErrorButton,
    required this.titleScreen,
    required this.typeAddProductToShoppingCart,
    required this.identifierAddProductToShoppingCart,
    this.isShopGetSizeProduct,
////////////
    required this.isChildRoute,
    required this.isLike,
    required this.listItems,
  });

  final List<ProductDataModel> favouritesProducts;
  final List<String> listProductsCode;
  final List<int> favouritesProductsId;
  final bool isLoadGetSizeProduct;
  final String codeProduct;
  final BasketInfoItemDataModel? itemInfo;
  final ProductDataModel product;
  final int? indexItem;
  final bool? isLoadErrorButton;
  final String titleScreen;
  final String typeAddProductToShoppingCart;
  final String identifierAddProductToShoppingCart;
  final bool? isShopGetSizeProduct;

  /////////
  final bool isChildRoute;
  final bool isLike;
  final List<ProductDataModel> listItems;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I.get<CardInfoBloc>()
          ..add(CardInfoEvent.init(
            favouritesProducts: favouritesProducts,
            listProductsCode: listProductsCode,
            favouritesProductsId: favouritesProductsId,
            isLoadGetSizeProduct: isLoadGetSizeProduct,
            codeProduct: codeProduct,
            titleScreen: titleScreen,
            typeAddProductToShoppingCart: typeAddProductToShoppingCart,
            identifierAddProductToShoppingCart:
                identifierAddProductToShoppingCart,
            product: product,
            itemInfo: itemInfo,
            indexItem: indexItem,
            isShopGetSizeProduct: isShopGetSizeProduct,
          ))
          ..add(
            CardInfoEvent.getProduct(
              code: codeProduct,
              titleScreen: titleScreen,
              typeAddProductToShoppingCart: typeAddProductToShoppingCart,
              identifierAddProductToShoppingCart:
                  identifierAddProductToShoppingCart,
              //size: size,
              isUpdate: false,
            ),
          ),
        child: CardInfoScreenView(
          item: product,
          isLike: true,
          listItems: listItems,
          favouritesProducts: favouritesProducts,
          isChildRoute: isChildRoute,
        ));
  }
}
