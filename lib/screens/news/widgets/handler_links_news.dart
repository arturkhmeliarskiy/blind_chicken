import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
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
    logging(url, name: 'url slepayakurica.ru');
    AppRouter appRouter = Locator.injection();
    if (url.contains('slepayakurica.ru') && url != 'https://slepayakurica.ru') {
      if (url.contains('stores')) {
        final path = url.replaceAll('https://slepayakurica.ru/stores', '');
        context.read<BoutiquesBloc>().add(
              BoutiquesEvent.getInfoBoutique(
                uid: '',
                path: path,
              ),
            );
        appRouter.push(
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
        appRouter.push(
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
        await appRouter.push(
          CardInfoRoute(
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
            codeProduct: code,
            titleScreen: 'Список новостей',
          ),
        );
        AppMetrica.reportEvent('$titleAppMetrica в описание товара');
      } else if (url.contains('brands')) {
        if (url == 'https://slepayakurica.ru/brands/') {
          context.read<BrandBloc>().add(
                BrandEvent.getBrands(
                  selectTypePeople: 0,
                  titleScreen: 'бренды',
                ),
              );
          navigateToBrandsScreen(
            appRouter: appRouter,
            titleScreen: titleScreen,
            messageId: messageId ?? '',
            idNews: idNews ?? '',
            context: context,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
          );
        } else if (url.contains('zhenshchinam')) {
          context.read<BrandBloc>().add(
                BrandEvent.getBrands(
                  selectTypePeople: 1,
                  titleScreen: 'бренды',
                ),
              );
          navigateToBrandsScreen(
            appRouter: appRouter,
            titleScreen: titleScreen,
            messageId: messageId ?? '',
            idNews: idNews ?? '',
            context: context,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
          );
        } else if (url.contains('muzhchinam')) {
          context.read<BrandBloc>().add(
                BrandEvent.getBrands(
                  selectTypePeople: 2,
                  titleScreen: 'бренды',
                ),
              );
          navigateToBrandsScreen(
            appRouter: appRouter,
            titleScreen: titleScreen,
            messageId: messageId ?? '',
            idNews: idNews ?? '',
            context: context,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
          );
        } else if (url.contains('detyam')) {
          context.read<BrandBloc>().add(
                BrandEvent.getBrands(
                  selectTypePeople: 3,
                  titleScreen: 'бренды',
                ),
              );
          navigateToBrandsScreen(
            appRouter: appRouter,
            titleScreen: titleScreen,
            messageId: messageId ?? '',
            idNews: idNews ?? '',
            context: context,
            newsInfo: newsInfo,
            newsMediaInfo: newsMediaInfo,
            newsNotificationInfo: newsNotificationInfo,
          );
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
          appRouter.push(
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
        }
        AppMetrica.reportEvent('$titleAppMetrica в бренды');
      } else if (url.contains('servisnaya-karta')) {
        context.read<CatalogBloc>().add(
              const CatalogEvent.getInfoServiceCard(
                code: '15846',
              ),
            );
        appRouter.push(
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
        appRouter.push(
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
        appRouter.push(
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

  static void navigateToBrandsScreen({
    required AppRouter appRouter,
    required String titleScreen,
    NewsInfoItemDataModel? newsInfo,
    MediaInfoItemDataModel? newsMediaInfo,
    NotificationInfoItemDataModel? newsNotificationInfo,
    String? messageId,
    String? idNews,
    required BuildContext context,
  }) {
    appRouter.push(
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
  }
}
