import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/src/widgets/custom_rich_text.dart';
import 'package:auto_route/auto_route.dart';

class BlindChickenTopBannerInfo extends StatelessWidget {
  const BlindChickenTopBannerInfo({super.key, required this.bannerDataModel});

  final TopBannerDataModel bannerDataModel;

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (bannerDataModel.data.title.isNotEmpty) {
          return GestureDetector(
            onTap: () {
              if (bannerDataModel.data.type == 'catalog') {
                context.read<CatalogBloc>().add(
                      CatalogEvent.getInfoProducts(
                        path: bannerDataModel.data.section,
                        isCleanHistory: true,
                      ),
                    );
                final appMetricaEcommerce = GetIt.I.get<AppMetricaEcommerceService>();
                appMetricaEcommerce.openPages(
                  titleScreen: 'Sale баннер в шапке',
                );
                if (context.router.navigationHistory.urlState.path == "/news_info_description") {
                  NewsInfoDescriptionRouteArgs newsInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;

                  context.navigateTo(DashboardRoute(children: [
                    HomeAutoRouterRoute(
                      children: [
                        CatalogRoute(
                          title: '',
                          url: bannerDataModel.data.section,
                          lastPath: 'news_info_description',
                          newsInfo: newsInfoArgs.info,
                        ),
                      ],
                    ),
                  ]));
                } else if (context.router.navigationHistory.urlState.path ==
                    "/media_info_description") {
                  MediaInfoDescriptionRouteArgs mdiaInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;

                  context.navigateTo(DashboardRoute(children: [
                    HomeAutoRouterRoute(
                      children: [
                        CatalogRoute(
                          title: '',
                          url: bannerDataModel.data.section,
                          lastPath: 'media_info_description',
                          newsMediaInfo: mdiaInfoArgs.info,
                        ),
                      ],
                    ),
                  ]));
                } else if (context.router.navigationHistory.urlState.path ==
                    "/notfication_info_description") {
                  NotificationInfoDescriptionRouteArgs notficationInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;

                  context.navigateTo(DashboardRoute(children: [
                    HomeAutoRouterRoute(
                      children: [
                        CatalogRoute(
                          title: '',
                          url: bannerDataModel.data.section,
                          lastPath: 'notfication_info_description',
                          newsNotificationInfo: notficationInfoArgs.info,
                        ),
                      ],
                    ),
                  ]));
                } else {
                  context.navigateTo(
                    HomeAutoRouterRoute(
                      children: [
                        CatalogRoute(
                          title: '',
                          url: bannerDataModel.data.section,
                        ),
                      ],
                    ),
                  );
                }
              } else if (bannerDataModel.data.type == 'product') {
                if (context.router.navigationHistory.urlState.path == "/news_info_description") {
                  NewsInfoDescriptionRouteArgs newsInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            CardInfoRoute(
                              isLike: false,
                              listItems: const [],
                              favouritesProducts: const [],
                              isChildRoute: false,
                              lastPath: 'news_info_description',
                              newsInfo: newsInfoArgs.info,
                              titleScreen: 'Баннер в шапке',
                              codeProduct: bannerDataModel.data.code,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else if (context.router.navigationHistory.urlState.path ==
                    "/media_info_description") {
                  MediaInfoDescriptionRouteArgs mdiaInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            CardInfoRoute(
                              isLike: false,
                              listItems: const [],
                              favouritesProducts: const [],
                              isChildRoute: false,
                              lastPath: 'media_info_description',
                              newsMediaInfo: mdiaInfoArgs.info,
                              titleScreen: 'Баннер в шапке',
                              codeProduct: bannerDataModel.data.code,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else if (context.router.navigationHistory.urlState.path ==
                    "/notfication_info_description") {
                  NotificationInfoDescriptionRouteArgs notficationInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            CardInfoRoute(
                              isLike: false,
                              listItems: const [],
                              favouritesProducts: const [],
                              isChildRoute: false,
                              lastPath: 'notfication_info_description',
                              newsNotificationInfo: notficationInfoArgs.info,
                              titleScreen: 'Баннер в шапке',
                              codeProduct: bannerDataModel.data.code,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  context.navigateTo(
                    HomeAutoRouterRoute(
                      children: [
                        CardInfoRoute(
                          isLike: false,
                          listItems: const [],
                          favouritesProducts: const [],
                          isChildRoute: false,
                          titleScreen: 'Баннер в шапке',
                          codeProduct: bannerDataModel.data.code,
                        ),
                      ],
                    ),
                  );
                }
              } else if (bannerDataModel.data.type == 'boutique') {
                context.read<BoutiquesBloc>().add(
                      BoutiquesEvent.getInfoBoutique(
                        uid: bannerDataModel.data.uid,
                      ),
                    );
                if (context.router.navigationHistory.urlState.path == "/news_info_description") {
                  NewsInfoDescriptionRouteArgs newsInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            BoutiquesDescriptionRoute(
                              lastPath: 'news_info_description',
                              newsInfo: newsInfoArgs.info,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else if (context.router.navigationHistory.urlState.path ==
                    "/media_info_description") {
                  MediaInfoDescriptionRouteArgs mdiaInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            BoutiquesDescriptionRoute(
                              lastPath: 'media_info_description',
                              newsMediaInfo: mdiaInfoArgs.info,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else if (context.router.navigationHistory.urlState.path ==
                    "/notfication_info_description") {
                  NotificationInfoDescriptionRouteArgs notficationInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            BoutiquesDescriptionRoute(
                              lastPath: 'notfication_info_description',
                              newsNotificationInfo: notficationInfoArgs.info,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  context.navigateTo(
                    HomeAutoRouterRoute(
                      children: [
                        BoutiquesDescriptionRoute(),
                      ],
                    ),
                  );
                }
              } else if (bannerDataModel.data.type == 'gift_card') {
                if (context.router.navigationHistory.urlState.path == "/news_info_description") {
                  NewsInfoDescriptionRouteArgs newsInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            GiftCardRoute(
                              lastPath: 'news_info_description',
                              newsInfo: newsInfoArgs.info,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else if (context.router.navigationHistory.urlState.path ==
                    "/media_info_description") {
                  MediaInfoDescriptionRouteArgs mdiaInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            GiftCardRoute(
                              lastPath: 'media_info_description',
                              newsMediaInfo: mdiaInfoArgs.info,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else if (context.router.navigationHistory.urlState.path ==
                    "/notfication_info_description") {
                  NotificationInfoDescriptionRouteArgs notficationInfoArgs =
                      context.router.navigationHistory.urlState.segments.first.args;
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            GiftCardRoute(
                              lastPath: 'notfication_info_description',
                              newsNotificationInfo: notficationInfoArgs.info,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  context.navigateTo(
                    HomeAutoRouterRoute(
                      children: [
                        GiftCardRoute(),
                      ],
                    ),
                  );
                }
              } else if (bannerDataModel.data.type == 'news') {
                context.read<NewsBloc>().add(
                      NewsEvent.getNewsDescriptionInfo(id: bannerDataModel.data.idNews),
                    );
                context.navigateTo(
                  NewsNotificationDescriptionRoute(),
                );
              } else if (bannerDataModel.data.type == 'media') {
                context.read<NewsBloc>().add(
                      NewsEvent.getMediaDescriptionInfo(id: bannerDataModel.data.idNews),
                    );
                context.navigateTo(
                  MediaNotificationDescriptionRoute(),
                );
              } else if (bannerDataModel.data.type == 'notification') {
                context.read<NewsBloc>().add(
                      NewsEvent.getNotificationDescriptionInfo(id: bannerDataModel.data.idNews),
                    );
                context.navigateTo(
                  NotificationInfoNotificationDescriptionRoute(),
                );
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              color: Color(_getColorFromHex(bannerDataModel.data.colorBackground)),
              alignment: Alignment.center,
              child: CustomRichText(
                  richTextData: textTransformation(
                context: context,
                text: bannerDataModel.data.title,
              )),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
