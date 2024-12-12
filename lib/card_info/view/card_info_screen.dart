import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

import 'card_info_screen_view.dart';

@RoutePage()
class CardInfoScreen extends StatefulWidget {
  const CardInfoScreen({
    super.key,
    required this.product,
    required this.isLike,
    required this.listItems,
    required this.isChildRoute,
    required this.titleScreen,
    required this.codeProduct,
    //todo пусть пока будет убрать потом
    required this.favouritesProducts,
    ///////////// средний приоритет нужон придмать как отпралять
    ////////
  });
  final List<ProductDataModel> favouritesProducts;
  final String codeProduct;
  final ProductDataModel product;
  final String titleScreen;
  final bool isChildRoute;
  final bool isLike;
  final List<ProductDataModel> listItems;

  @override
  State<CardInfoScreen> createState() => _CardInfoScreenState();
}

class _CardInfoScreenState extends State<CardInfoScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CardInfoBloc>().add(
          CardInfoEvent.getProduct(
            product: widget.product,
            code: widget.codeProduct,
            titleScreen: widget.titleScreen,
            typeAddProductToShoppingCart: 'Карточка товара',
            identifierAddProductToShoppingCart: '1',
            isUpdate: false,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return CardInfoScreenView(
      item: widget.product,
      isLike: widget.isLike,
      listItems: widget.listItems,
      //todo возможно проcто убрать
      favouritesProducts: widget.favouritesProducts,
      isChildRoute: widget.isChildRoute,
      titleScreen: widget.titleScreen,
    );
  }
}
