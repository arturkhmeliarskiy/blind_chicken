import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:url_launcher/url_launcher.dart';

class HandlerLinksNews {
  static Future<bool> handlerLinks({
    required BuildContext context,
    required String url,
    required String titleScreen,
    required String titleAppMetrica,
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? idNews,
    String? messageId,
  }) async {
    if (url.contains('slepayakurica.ru') && url != 'https://slepayakurica.ru') {
      if (url.contains('stores')) {
        final path = url.replaceAll('https://slepayakurica.ru/stores', '');
        context.read<BoutiquesBloc>().add(
              BoutiquesEvent.getInfoBoutique(
                uid: '',
                path: path,
              ),
            );
        context.navigateTo(
          DashboardRoute(
            children: [
              HomeAutoRouterRoute(
                children: [
                  BoutiquesDescriptionRoute(
                    lastPath: titleScreen,
                    messageId: messageId,
                    idNews: idNews,
                    newsInfo: newsInfo,
                    newsMediaInfo: newsMediaInfo,
                    newsNotificationInfo: newsNotificationInfo,
                  )
                ],
              )
            ],
          ),
        );
        AppMetrica.reportEvent('$titleAppMetrica в описание бутика');
      } else if (url.contains('giftcard')) {
        context.navigateTo(
          DashboardRoute(
            children: [
              HomeAutoRouterRoute(
                children: [
                  GiftCardRoute(
                    lastPath: titleScreen,
                    messageId: messageId,
                    idNews: idNews,
                    newsInfo: newsInfo,
                    newsMediaInfo: newsMediaInfo,
                    newsNotificationInfo: newsNotificationInfo,
                  ),
                ],
              ),
            ],
          ),
        );
        AppMetrica.reportEvent('$titleAppMetrica в подарочную карту');
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
          DashboardRoute(
            children: [
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
                    newsInfo: newsInfo,
                    newsMediaInfo: newsMediaInfo,
                    newsNotificationInfo: newsNotificationInfo,
                  ),
                ],
              ),
            ],
          ),
        );
        AppMetrica.reportEvent('$titleAppMetrica в описание товара');
      } else if (url.contains('brands')) {
        context.read<BrandBloc>().add(
              BrandEvent.getBrands(
                selectTypePeople: 0,
                titleScreen: 'бренды',
              ),
            );
        context.navigateTo(
          DashboardRoute(
            children: [
              HomeAutoRouterRoute(
                children: [
                  BrandsRoute(
                    lastPath: titleScreen,
                    messageId: messageId,
                    idNews: idNews,
                    newsInfo: newsInfo,
                    newsMediaInfo: newsMediaInfo,
                    newsNotificationInfo: newsNotificationInfo,
                  ),
                ],
              ),
            ],
          ),
        );
        AppMetrica.reportEvent('$titleAppMetrica в бренды');
      } else if (url.contains('servisnaya-karta')) {
        context.read<CatalogBloc>().add(
              const CatalogEvent.getInfoServiceCard(
                code: '15846',
              ),
            );
        context.navigateTo(
          DashboardRoute(
            children: [
              HomeAutoRouterRoute(
                children: [
                  ServiceCardRoute(
                    lastPath: titleScreen,
                    messageId: messageId,
                    idNews: idNews,
                    newsInfo: newsInfo,
                    newsMediaInfo: newsMediaInfo,
                    newsNotificationInfo: newsNotificationInfo,
                  ),
                ],
              ),
            ],
          ),
        );
        AppMetrica.reportEvent('$titleAppMetrica в сервисную карту');
      } else if (url.contains('proverka-zreniya')) {
        context.navigateTo(
          DashboardRoute(
            children: [
              HomeAutoRouterRoute(
                children: [
                  VisionWarningRoute(
                    lastPath: titleScreen,
                    messageId: messageId,
                    idNews: idNews,
                    newsInfo: newsInfo,
                    newsMediaInfo: newsMediaInfo,
                    newsNotificationInfo: newsNotificationInfo,
                  ),
                ],
              ),
            ],
          ),
        );
        AppMetrica.reportEvent('$titleAppMetrica в проверку зрения');
      } else {
        final path = url.replaceAll('https://slepayakurica.ru', '');
        final filterService = GetIt.I.get<FilterService>();
        final info = filterService.converterNotificationInfo(
          value: path,
        );
        context.read<CatalogBloc>().add(
              CatalogEvent.getInfoProductsPushNotification(
                path: info.url,
                sort: 'n',
                filterNotifcation: info,
              ),
            );
        context.navigateTo(
          DashboardRoute(
            children: [
              HomeAutoRouterRoute(
                children: [
                  CatalogRoute(
                    title: '',
                    url: path,
                    lastPath: titleScreen,
                    messageId: messageId,
                    idNews: idNews,
                    newsInfo: newsInfo,
                    newsMediaInfo: newsMediaInfo,
                    newsNotificationInfo: newsNotificationInfo,
                  )
                ],
              ),
            ],
          ),
        );
        final appMetricaEcommerce = GetIt.I.get<AppMetricaEcommerceService>();
        if (path.contains('sale')) {
          appMetricaEcommerce.openPages(
            titleScreen: 'в раздел sale',
          );
          AppMetrica.reportEvent('$titleAppMetrica в раздел sale');
        } else {
          appMetricaEcommerce.openPages(
            titleScreen: 'в каталог',
          );
          AppMetrica.reportEvent('$titleAppMetrica в каталог');
        }
      }
    } else {
      AppMetrica.reportEvent('$titleAppMetrica на сайт $url');
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.inAppWebView,
      );
    }
    return true;
  }
}
