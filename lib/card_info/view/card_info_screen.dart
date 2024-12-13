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
    this.product,
    required this.isLike,
    required this.listItems,
    required this.isChildRoute,
    required this.titleScreen,
    required this.codeProduct,
    required this.favouritesProducts,
    //
    this.deeplinkCode = '',
    this.lastPath = '',
    this.messageId,
    this.idNews,
    this.newsInfo,
    this.newsMediaInfo,
    this.newsNotificationInfo,
  });
  final List<ProductDataModel> favouritesProducts;
  final String codeProduct;
  final ProductDataModel? product;
  final String titleScreen;
  final bool isChildRoute;
  final bool isLike;
  final List<ProductDataModel> listItems;

  final String deeplinkCode;
  final String lastPath;
  final String? messageId;
  final String? idNews;
  final NewsInfoItemDataModel? newsInfo;
  final MediaInfoItemDataModel? newsMediaInfo;
  final NotificationInfoItemDataModel? newsNotificationInfo;

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
      favouritesProducts: widget.favouritesProducts,
      isChildRoute: widget.isChildRoute,
      titleScreen: widget.titleScreen,
      code: widget.deeplinkCode,
      lastPath: widget.lastPath,
      messageId: widget.messageId,
      idNews: widget.idNews,
      newsInfo: widget.newsInfo,
      newsMediaInfo: widget.newsMediaInfo,
      newsNotificationInfo: widget.newsNotificationInfo,
    );
  }
}
