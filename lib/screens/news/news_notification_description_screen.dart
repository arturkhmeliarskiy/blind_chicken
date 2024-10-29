import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/handler_links_news.dart';
import 'package:blind_chicken/screens/news/widgets/news_slider.dart';
import 'package:blind_chicken/screens/news/widgets/news_video_player.dart';
import 'package:blind_chicken/screens/news/widgets/news_youtube_video_player.dart';
import 'package:blocs/blocs.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class NewsNotificationDescriptionScreen extends StatefulWidget {
  const NewsNotificationDescriptionScreen({
    super.key,
    this.idNews = '',
    this.messageId,
    this.isNotification = false,
  });

  final String idNews;
  final String? messageId;
  final bool isNotification;

  @override
  State<NewsNotificationDescriptionScreen> createState() =>
      _NewsNotificationDescriptionScreenState();
}

class _NewsNotificationDescriptionScreenState extends State<NewsNotificationDescriptionScreen> {
  final BlindChickenShowDialogError _blindChickenNotificationShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogNotificatioInfoError = false;
  bool _isFullScreenVideo = false;
  double _aspectRatio = 0.0;
  bool _isSwipe = true;

  @override
  void initState() {
    if (widget.idNews.isNotEmpty) {
      context.read<NewsBloc>().add(
            NewsEvent.getNewsDescriptionInfo(
              id: widget.idNews,
              isNotification: widget.isNotification,
              messageId: widget.messageId,
            ),
          );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocListener<NewsBloc, NewsState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (_isShowDialogNotificatioInfoError) {
              _isShowDialogNotificatioInfoError = false;
              _blindChickenNotificationShowDialogError.closeShowDialog();
            }
            if (initState.isUpdateVersionApp && initState.isNotification) {
              final updateData = GetIt.I.get<UpdateDataService>();
              if (updateData.isOpenUpdateModalWindow) {
                Navigator.of(context, rootNavigator: true).pop();
              }

              BlindChickenMessage().showOverlay(context, 'Доступно обновление приложения', () {
                if (Platform.isAndroid || Platform.isIOS) {
                  final appId =
                      Platform.isAndroid ? 'YOUR_ANDROID_PACKAGE_ID' : 'com.slepayakurica.app';
                  final url = Uri.parse(
                    Platform.isAndroid
                        ? "market://details?id=$appId"
                        : "https://apps.apple.com/ru/app/id6471508431",
                  );
                  launchUrl(
                    url,
                    mode: LaunchMode.externalApplication,
                  );
                }
              });
            }
          },
          error: (value) {
            if (!_isShowDialogNotificatioInfoError) {
              _isShowDialogNotificatioInfoError = true;
              _blindChickenNotificationShowDialogError.openShowDualog(
                context: context,
                errorMessage: value.errorMessage,
                widget: BlocBuilder<NewsBloc, NewsState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      loadErrorButton: (value) {
                        return const SizedBox(
                          height: 15,
                          width: 15,
                          child: Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              color: BlindChickenColors.backgroundColor,
                            ),
                          ),
                        );
                      },
                      error: (value) {
                        return Text(
                          'Повторить',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.backgroundColor,
                              ),
                          textAlign: TextAlign.center,
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
                onRepeatRequest: () {
                  if (widget.idNews.isNotEmpty) {
                    context.read<NewsBloc>().add(
                          NewsEvent.getNewsDescriptionInfo(
                            id: widget.idNews,
                            isNotification: widget.isNotification,
                            messageId: widget.messageId,
                          ),
                        );
                  }
                },
              );
            }
          },
          orElse: () {},
        );
      },
      child: !_isFullScreenVideo
          ? Stack(
              children: [
                Scaffold(
                  body: SafeArea(
                    child: ListView(children: [
                      const AppBarBlindChicken(),
                      BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return GestureDetector(
                              onHorizontalDragUpdate: (details) {},
                              onHorizontalDragEnd: (DragEndDetails details) {
                                if (details.velocity.pixelsPerSecond.dx > 0) {
                                  context.back();
                                  setState(() {
                                    _isSwipe = false;
                                  });
                                }
                              },
                              child: PopScope(
                                canPop: false,
                                onPopInvoked: (value) {
                                  if (_isSwipe && !value) {
                                    context.back();
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 8,
                                                ),
                                                child: InkWell(
                                                  onTap: () {
                                                    context.back();
                                                  },
                                                  child: SvgPicture.asset(
                                                    'assets/icons/arrow-left.svg',
                                                    height: 24,
                                                    width: 24,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TextSpan(
                                              text: initState.oneNews?.data.title ?? '',
                                              style:
                                                  Theme.of(context).textTheme.titleSmall?.copyWith(
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.2,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        DateInfo.dateFormat(initState.oneNews?.data.createAt ?? ''),
                                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                              color: BlindChickenColors.textInput,
                                            ),
                                      ),
                                      if ((initState.oneNews?.data.typeMedia ?? '') == 'images' &&
                                          (initState.oneNews?.data.images.length ?? 0) == 1)
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                context.navigateTo(
                                                  NewsPreviewMediaRoute(
                                                    media: initState.oneNews?.data.images ?? [],
                                                    goBotton: () {
                                                      context.back();
                                                    },
                                                    selectIndex: 0,
                                                  ),
                                                );
                                              },
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    initState.oneNews?.data.images.first ?? '',
                                                width: MediaQuery.of(context).orientation ==
                                                        Orientation.portrait
                                                    ? width
                                                    : width / 2,
                                                height: 250,
                                                fit: BoxFit.cover,
                                                errorWidget: (context, url, error) =>
                                                    const Icon(Icons.error),
                                              ),
                                            ),
                                          ],
                                        ),
                                      if ((initState.oneNews?.data.typeMedia ?? '') == 'images' &&
                                          (initState.oneNews?.data.images.length ?? 0) > 1)
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            NewsSlider(
                                              media: initState.oneNews?.data.images ?? [],
                                              goBotton: () {
                                                context.back();
                                              },
                                              onTap: (index) {
                                                context.pushRoute(
                                                  NewsPreviewMediaRoute(
                                                    selectIndex: index,
                                                    media: initState.oneNews?.data.images ?? [],
                                                    goBotton: () {
                                                      context.back();
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      if ((initState.oneNews?.data.typeMedia ?? '') == 'video' &&
                                          (initState.oneNews?.data.typeVideo ?? '') == 'youtube')
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            NewsYouTubeVideoPlayer(
                                              url: initState.oneNews?.data.video ?? '',
                                              onEnterFullScreen: () {
                                                setState(() {
                                                  _isFullScreenVideo = true;
                                                });
                                              },
                                              onExitFullScreen: () {},
                                            ),
                                          ],
                                        ),
                                      if ((initState.oneNews?.data.typeMedia ?? '') == 'video' &&
                                          (initState.oneNews?.data.typeVideo ?? '') == 'original')
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            NewsVideoPlayer(
                                              url: initState.oneNews?.data.video ?? '',
                                              image: initState.oneNews?.data.videoImage ?? '',
                                              isFullScreenVideo: _isFullScreenVideo,
                                              videoImageHeight:
                                                  initState.oneNews?.data.videoImageHeight ?? 0,
                                              videoImageWeight:
                                                  initState.oneNews?.data.videoImageWeight ?? 0,
                                              onEnterFullScreen: (aspectRatio) {
                                                setState(() {
                                                  _isFullScreenVideo = true;
                                                  _aspectRatio = aspectRatio;
                                                });
                                              },
                                              onExitFullScreen: () {},
                                            ),
                                          ],
                                        ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      HtmlWidget(
                                        initState.oneNews?.data.description ?? '',
                                        textStyle: Theme.of(context).textTheme.displayMedium,
                                        onTapUrl: (url) async {
                                          return HandlerLinksNews.handlerLinks(
                                            context: context,
                                            url: url,
                                            titleScreen: 'news_notification_description',
                                            idNews: widget.idNews,
                                            messageId: widget.messageId,
                                            titleAppMetrica:
                                                'Переход по ссылке из cтраницы push-уведомления описания новости',
                                            newsInfo: initState.oneNews?.data,
                                          );
                                        },
                                      ),
                                      // Container(
                                      //   height: 40,
                                      //   color: BlindChickenColors.backgroundColor,
                                      //   child: Row(
                                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      //     children: [
                                      //       const SizedBox(),
                                      //       Row(
                                      //         children: [
                                      //           const Icon(
                                      //             Icons.remove_red_eye,
                                      //             size: 14,
                                      //             color: BlindChickenColors.borderInput,
                                      //           ),
                                      //           const SizedBox(
                                      //             width: 4,
                                      //           ),
                                      //           Text(
                                      //             widget.info.numberViews.toString(),
                                      //             style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                      //                   fontSize: 12,
                                      //                   color: BlindChickenColors.borderInput,
                                      //                 ),
                                      //           )
                                      //         ],
                                      //       )
                                      //     ],
                                      //   ),
                                      // ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      if (initState.oneNews?.data.path.isNotEmpty ?? false)
                                        GestureDetector(
                                          onTap: () {
                                            if ((initState.oneNews?.data.typePath ?? '') ==
                                                'catalog') {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.getInfoProducts(
                                                      path: initState.oneNews?.data.path ?? '',
                                                      isCleanHistory: true,
                                                    ),
                                                  );
                                              context.navigateTo(DashboardRoute(children: [
                                                HomeAutoRouterRoute(
                                                  children: [
                                                    CatalogRoute(
                                                      title: '',
                                                      url: initState.oneNews?.data.path ?? '',
                                                      lastPath: 'news_notification_description',
                                                      newsInfo: initState.oneNews?.data,
                                                    ),
                                                  ],
                                                ),
                                              ]));
                                            } else if ((initState.oneNews?.data.typePath ?? '') ==
                                                'product') {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.getInfoProduct(
                                                      code: initState.oneNews?.data.code ?? '',
                                                      titleScreen:
                                                          'Описнаие новостей (уведомление)',
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
                                                          lastPath: 'news_notification_description',
                                                          newsInfo: initState.oneNews?.data,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            } else if ((initState.oneNews?.data.typePath ?? '') ==
                                                'boutique') {
                                              context.read<BoutiquesBloc>().add(
                                                    BoutiquesEvent.getInfoBoutique(
                                                      uid: initState.oneNews?.data.uidStore ?? '',
                                                    ),
                                                  );
                                              context.navigateTo(
                                                DashboardRoute(
                                                  children: [
                                                    HomeAutoRouterRoute(
                                                      children: [
                                                        BoutiquesDescriptionRoute(
                                                          lastPath: 'news_notification_description',
                                                          newsInfo: initState.oneNews?.data,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            } else if ((initState.oneNews?.data.typePath ?? '') ==
                                                'gift_card') {
                                              context.navigateTo(
                                                DashboardRoute(
                                                  children: [
                                                    HomeAutoRouterRoute(
                                                      children: [
                                                        GiftCardRoute(
                                                          lastPath: 'news_notification_description',
                                                          newsInfo: initState.oneNews?.data,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
                                          },
                                          child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: BlindChickenColors.borderBottomColor,
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              initState.oneNews?.data.titleButton ?? '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    color: BlindChickenColors.activeBorderTextField,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      }),
                    ]),
                  ),
                ),
                BlocBuilder<NewsBloc, NewsState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      load: (value) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Colors.black,
                              backgroundColor: Colors.grey.shade400,
                            ),
                          ),
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
              ],
            )
          : BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    return (initState.oneNews?.data.typeVideo ?? '') == 'original'
                        ? Scaffold(
                            backgroundColor: BlindChickenColors.activeBorderTextField,
                            body: NewsVideoPlayer(
                              url: initState.oneNews?.data.video ?? '',
                              image: initState.oneNews?.data.videoImage ?? '',
                              isFullScreenVideo: _isFullScreenVideo,
                              onEnterFullScreen: (aspectRatio) {},
                              aspectRatio: _aspectRatio,
                              onExitFullScreen: () {
                                setState(() {
                                  _isFullScreenVideo = false;
                                });
                              },
                            ),
                          )
                        : NewsYouTubeVideoPlayer(
                            url: initState.oneNews?.data.video ?? '',
                            onEnterFullScreen: () {},
                            onExitFullScreen: () {
                              setState(() {
                                _isFullScreenVideo = false;
                              });
                            },
                          );
                  },
                  orElse: () => const SizedBox(),
                );
              },
            ),
    );
  }
}
