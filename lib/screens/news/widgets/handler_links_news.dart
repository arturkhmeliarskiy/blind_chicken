import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:url_launcher/url_launcher.dart';

class HandlerLinksNews {
  static Future<bool> handlerLinks({
    required BuildContext context,
    required String url,
    required String titleScreen,
    String? idNews,
    String? messageId,
  }) async {
    if (url.contains('slepayakurica.ru')) {
      if (url.contains('stores')) {
        final path = url.replaceAll('https://slepayakurica.ru/stores', '');
        context.read<BoutiquesBloc>().add(
              BoutiquesEvent.getInfoBoutique(
                uid: '',
                path: path,
              ),
            );
        context.navigateTo(
          HomeAutoRouterRoute(
            children: [
              BoutiquesDescriptionRoute(
                lastPath: titleScreen,
                messageId: messageId,
                idNews: idNews,
              ),
            ],
          ),
        );
      } else if (url.contains('giftcard')) {
        context.navigateTo(
          HomeAutoRouterRoute(
            children: [
              GiftCardRoute(
                lastPath: titleScreen,
                messageId: messageId,
                idNews: idNews,
              ),
            ],
          ),
        );
      } else if (url.contains('product')) {
        final code = url.replaceAll('https://slepayakurica.ru/product', '').replaceAll('/', '');
        context.read<CatalogBloc>().add(
              CatalogEvent.getInfoProduct(
                code: code,
                titleScreen: 'Список новостей',
                typeAddProductToShoppingCart: 'Кнопка',
                identifierAddProductToShoppingCart: '4',
              ),
            );
        context.navigateTo(
          HomeAutoRouterRoute(
            children: [
              CatalogCardInfoRoute(
                isLike: false,
                listItems: const [],
                favouritesProducts: const [],
                isChildRoute: false,
                lastPath: titleScreen,
                messageId: messageId,
                idNews: idNews,
              ),
            ],
          ),
        );
      } else if (url.contains('brands')) {
        context.read<BrandBloc>().add(
              BrandEvent.getBrands(
                selectTypePeople: 0,
                titleScreen: 'бренды',
              ),
            );
        context.navigateTo(
          HomeAutoRouterRoute(
            children: [
              BrandsRoute(
                lastPath: titleScreen,
                messageId: messageId,
                idNews: idNews,
              ),
            ],
          ),
        );
      } else if (url.contains('servisnaya-karta')) {
        context.read<CatalogBloc>().add(
              const CatalogEvent.getInfoServiceCard(
                code: '15846',
              ),
            );
        context.navigateTo(
          HomeAutoRouterRoute(
            children: [
              ServiceCardRoute(
                lastPath: titleScreen,
                messageId: messageId,
                idNews: idNews,
              ),
            ],
          ),
        );
      } else if (url.contains('proverka-zreniya')) {
        context.navigateTo(
          HomeAutoRouterRoute(
            children: [
              VisionWarningRoute(
                lastPath: titleScreen,
                messageId: messageId,
                idNews: idNews,
              ),
            ],
          ),
        );
      } else {
        final path = url.replaceAll('https://slepayakurica.ru', '');
        context.read<CatalogBloc>().add(
              CatalogEvent.getInfoProducts(
                path: path,
                isCleanHistory: true,
              ),
            );
        context.navigateTo(
          HomeAutoRouterRoute(children: [
            CatalogRoute(
              title: '',
              url: path,
              lastPath: titleScreen,
              messageId: messageId,
              idNews: idNews,
            )
          ]),
        );
        final appMetricaEcommerce = GetIt.I.get<AppMetricaEcommerceService>();
        appMetricaEcommerce.openPages(
          titleScreen: 'Каталог в списке новостей',
        );
      }
    } else {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.inAppWebView,
      );
    }
    return true;
  }
}
