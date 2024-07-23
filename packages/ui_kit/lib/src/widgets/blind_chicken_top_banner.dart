import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/src/widgets/custom_rich_text.dart';
import 'package:auto_route/auto_route.dart';

class BlindChickenTopBanner extends StatelessWidget {
  const BlindChickenTopBanner({super.key});

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBannerBloc, TopBannerState>(
      builder: (context, state) {
        return state.maybeMap(
          preloadData: (initState) {
            return LayoutBuilder(
              builder: (context, constraints) {
                if (initState.info.data.title.isNotEmpty) {
                  return GestureDetector(
                    onTap: () {
                      if (initState.info.data.type == 'catalog') {
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProducts(
                                path: initState.info.data.section,
                                isCleanHistory: true,
                              ),
                            );
                        if (context.router.navigationHistory.urlState.path ==
                            "/news_info_description") {
                          NewsInfoDescriptionRouteArgs newsInfoArgs =
                              context.router.navigationHistory.urlState.segments.first.args;

                          context.navigateTo(DashboardRoute(children: [
                            HomeAutoRouterRoute(
                              children: [
                                CatalogRoute(
                                  title: '',
                                  url: initState.info.data.section,
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
                                  url: initState.info.data.section,
                                  lastPath: 'media_info_description',
                                  newsMediaInfo: mdiaInfoArgs.info,
                                ),
                              ],
                            ),
                          ]));
                        } else if (context.router.navigationHistory.urlState.path ==
                            "/notfication_info_description") {
                          NotficationInfoDescriptionRouteArgs notficationInfoArgs =
                              context.router.navigationHistory.urlState.segments.first.args;

                          context.navigateTo(DashboardRoute(children: [
                            HomeAutoRouterRoute(
                              children: [
                                CatalogRoute(
                                  title: '',
                                  url: initState.info.data.section,
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
                                  url: initState.info.data.section,
                                ),
                              ],
                            ),
                          );
                        }
                      } else if (initState.info.data.type == 'product') {
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProduct(
                                code: initState.info.data.code,
                              ),
                            );
                        if (context.router.navigationHistory.urlState.path ==
                            "/news_info_description") {
                          NewsInfoDescriptionRouteArgs newsInfoArgs =
                              context.router.navigationHistory.urlState.segments.first.args;
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
                                    CatalogCardInfoRoute(
                                      isLike: false,
                                      listItems: const [],
                                      favouritesProducts: const [],
                                      isChildRoute: false,
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
                          NotficationInfoDescriptionRouteArgs notficationInfoArgs =
                              context.router.navigationHistory.urlState.segments.first.args;
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
                                CatalogCardInfoRoute(
                                  isLike: false,
                                  listItems: const [],
                                  favouritesProducts: const [],
                                  isChildRoute: false,
                                ),
                              ],
                            ),
                          );
                        }
                      } else if (initState.info.data.type == 'boutique') {
                        context.read<BoutiquesBloc>().add(
                              BoutiquesEvent.getInfoBoutique(
                                uid: initState.info.data.uid,
                              ),
                            );
                        if (context.router.navigationHistory.urlState.path ==
                            "/news_info_description") {
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
                          NotficationInfoDescriptionRouteArgs notficationInfoArgs =
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
                      } else if (initState.info.data.type == 'gift_card') {
                        if (context.router.navigationHistory.urlState.path ==
                            "/news_info_description") {
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
                          NotficationInfoDescriptionRouteArgs notficationInfoArgs =
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
                      } else if (initState.info.data.type == 'news') {
                        context.read<NewsBloc>().add(
                              NewsEvent.getNewsDescriptionInfo(id: initState.info.data.idNews),
                            );
                        context.navigateTo(
                          NewsNotificationDescriptionRoute(),
                        );
                      } else if (initState.info.data.type == 'media') {
                        context.read<NewsBloc>().add(
                              NewsEvent.getMediaDescriptionInfo(id: initState.info.data.idNews),
                            );
                        context.navigateTo(
                          MediaNotificationDescriptionRoute(),
                        );
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8),
                      color: Color(_getColorFromHex(initState.info.data.colorBackground)),
                      alignment: Alignment.center,
                      child: CustomRichText(
                          richTextData: textTransformation(
                        context: context,
                        text: initState.info.data.title,
                      )),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
