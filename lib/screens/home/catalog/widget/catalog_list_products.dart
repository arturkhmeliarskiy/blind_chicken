import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/catalog/catalog_card_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogListProducts extends StatelessWidget {
  const CatalogListProducts({super.key, required this.initState});

  final PreloadDataCompletedCatalogState initState;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 5.1 / 10.0,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          initState.products.length,
          (index) {
            final codeProduct = (initState.codeProduct?.isNotEmpty ?? false)
                ? int.parse(initState.codeProduct ?? '0')
                : '';
            return CatalogCardItem(
              isLike: initState.favouritesProductsId.contains(initState.products[index].id),
              onAddFavouriteProduct: () {
                context.read<CatalogBloc>().add(
                      CatalogEvent.addFavouriteProduct(
                        index: initState.products[index].id,
                        product: initState.products[index],
                      ),
                    );
              },
              onDeleteFavouriteProduct: () {
                context.read<CatalogBloc>().add(
                      CatalogEvent.deleteFavouriteProduct(
                        index: initState.products[index].id,
                      ),
                    );
              },
              onSelect: () {
                context.read<CatalogBloc>().add(
                      CatalogEvent.getInfoProduct(
                        code: initState.products[index].id.toString(),
                        titleScreen: '',
                        typeAddProductToShoppingCart: '',
                        identifierAddProductToShoppingCart: '',
                      ),
                    );
                context.navigateTo(
                  CatalogCardInfoRoute(
                    item: initState.products[index],
                    isLike: initState.favouritesProductsId.contains(initState.products[index].id),
                    listItems: initState.products,
                    favouritesProducts: initState.favouritesProducts,
                    isChildRoute: false,
                  ),
                );
              },
              yourPrice: initState.products[index].yourPrice.toString(),
              imageUrl: initState.products[index].images[0],
              brend: initState.products[index].brend,
              category: initState.products[index].category,
              price: initState.products[index].price.toString(),
              isYourPriceDisplayed: initState.products[index].isYourPriceDisplayed,
              maximumCashback: initState.products[index].maximumCashback,
              maximumPersonalDiscount: initState.products[index].maximumPersonalDiscount,
              isAuth: initState.isAuth,
              userDiscount: initState.userDiscount,
              pb: initState.products[index].pb,
              isShop: initState.products[index].isShop,
              onAddProductToSoppingCart: () {
                context.read<CatalogBloc>().add(
                      CatalogEvent.getInfoProductSize(
                        code: initState.products[index].id.toString(),
                        isShop: initState.products[index].isShop,
                        titleScreen: 'Каталог',
                      ),
                    );
              },
              listSize: initState.listSize,
              isLoad: codeProduct == initState.products[index].id && initState.isLoadGetSizeProduct,
              sizeProduct: const [],
              promo: initState.products[index].promo,
              promoValue: initState.products[index].promoValue,
              images: initState.products[index].images,
            );
          },
        ));
  }
}
