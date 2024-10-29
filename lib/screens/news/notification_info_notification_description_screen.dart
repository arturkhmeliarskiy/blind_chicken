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
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class NotificationInfoNotificationDescriptionScreen extends StatefulWidget {
  const NotificationInfoNotificationDescriptionScreen({
    super.key,
    this.idNews = '',
    this.messageId,
    this.isNotification = false,
  });

  final String idNews;
  final String? messageId;
  final bool isNotification;

  @override
  State<NotificationInfoNotificationDescriptionScreen> createState() =>
      _NotificationInfoNotificationDescriptionScreenState();
}

class _NotificationInfoNotificationDescriptionScreenState
    extends State<NotificationInfoNotificationDescriptionScreen> {
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
            NewsEvent.getNotificationDescriptionInfo(
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
                          NewsEvent.getNotificationDescriptionInfo(
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
                              onHorizontalDragEnd: (DragEndDetails details) {
                                if (details.velocity.pixelsPerSecond.dx > 0) {
                                  context.navigateTo(
                                    NewsInfoRoute(
                                      indexPage: 2,
                                    ),
                                  );
                                  setState(() {
                                    _isSwipe = false;
                                  });
                                }
                              },
                              child: PopScope(
                                canPop: false,
                                onPopInvoked: (value) {
                                  if (_isSwipe && !value) {
                                    context.navigateTo(
                                      NewsInfoRoute(
                                        indexPage: 2,
                                      ),
                                    );
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
                                                    context.navigateTo(
                                                      NewsInfoRoute(
                                                        indexPage: 2,
                                                      ),
                                                    );
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
                                              text: initState.oneNotification?.data.title ?? '',
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
                                        DateInfo.dateFormat(
                                            initState.oneNotification?.data.createAt ?? ''),
                                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                              color: BlindChickenColors.textInput,
                                            ),
                                      ),
                                      if ((initState.oneNotification?.data.typeMedia ?? '') ==
                                              'images' &&
                                          (initState.oneNotification?.data.images.length ?? 0) == 1)
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                context.navigateTo(
                                                  NewsPreviewMediaRoute(
                                                    media: initState.oneNotification?.data.images ??
                                                        [],
                                                    goBotton: () {
                                                      context.back();
                                                    },
                                                    selectIndex: 0,
                                                  ),
                                                );
                                              },
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    initState.oneNotification?.data.images.first ??
                                                        '',
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
                                      if ((initState.oneNotification?.data.typeMedia ?? '') ==
                                              'images' &&
                                          (initState.oneNotification?.data.images.length ?? 0) > 1)
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            NewsSlider(
                                              media: initState.oneNotification?.data.images ?? [],
                                              goBotton: () {
                                                context.back();
                                              },
                                              onTap: (index) {
                                                context.pushRoute(
                                                  NewsPreviewMediaRoute(
                                                    selectIndex: index,
                                                    media: initState.oneNotification?.data.images ??
                                                        [],
                                                    goBotton: () {
                                                      context.back();
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      if ((initState.oneNotification?.data.typeMedia ?? '') ==
                                              'video' &&
                                          (initState.oneNotification?.data.typeVideo ?? '') ==
                                              'youtube')
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            NewsYouTubeVideoPlayer(
                                              url: initState.oneNotification?.data.video ?? '',
                                              onEnterFullScreen: () {
                                                setState(() {
                                                  _isFullScreenVideo = true;
                                                });
                                              },
                                              onExitFullScreen: () {},
                                            ),
                                          ],
                                        ),
                                      if ((initState.oneNotification?.data.typeMedia ?? '') ==
                                              'video' &&
                                          (initState.oneNotification?.data.typeVideo ?? '') ==
                                              'original')
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            NewsVideoPlayer(
                                              url: initState.oneNotification?.data.video ?? '',
                                              image:
                                                  initState.oneNotification?.data.videoImage ?? '',
                                              isFullScreenVideo: _isFullScreenVideo,
                                              videoImageHeight: initState
                                                      .oneNotification?.data.videoImageHeight ??
                                                  0,
                                              videoImageWeight: initState
                                                      .oneNotification?.data.videoImageWeight ??
                                                  0,
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
                                        initState.oneNotification?.data.description ?? '',
                                        textStyle: Theme.of(context).textTheme.displayMedium,
                                        onTapUrl: (url) async {
                                          return HandlerLinksNews.handlerLinks(
                                            context: context,
                                            url: url,
                                            titleScreen: 'notfication_info_notfication_description',
                                            idNews: widget.idNews,
                                            messageId: widget.messageId,
                                            titleAppMetrica:
                                                'Переход по ссылке из cтраницы push-уведомления описания уведомления',
                                            newsNotificationInfo: initState.oneNotification?.data,
                                          );
                                        },
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      if (initState.oneNotification?.data.path.isNotEmpty ?? false)
                                        GestureDetector(
                                          onTap: () {
                                            if ((initState.oneNotification?.data.typePath ?? '') ==
                                                'catalog') {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.getInfoProducts(
                                                      path: initState.oneNotification?.data.path ??
                                                          '',
                                                      isCleanHistory: true,
                                                    ),
                                                  );
                                              context.navigateTo(DashboardRoute(children: [
                                                HomeAutoRouterRoute(
                                                  children: [
                                                    CatalogRoute(
                                                      title: '',
                                                      url: initState.oneNotification?.data.path ??
                                                          '',
                                                      lastPath:
                                                          'notfication_info_notfication_description',
                                                      newsNotificationInfo:
                                                          initState.oneNotification?.data,
                                                    ),
                                                  ],
                                                ),
                                              ]));
                                            } else if ((initState.oneNotification?.data.typePath ??
                                                    '') ==
                                                'product') {
                                              context.read<CatalogBloc>().add(
                                                    CatalogEvent.getInfoProduct(
                                                      code: initState.oneNotification?.data.code ??
                                                          '',
                                                      titleScreen: 'Уведомление',
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
                                                          lastPath:
                                                              'notfication_info_notfication_description',
                                                          newsNotificationInfo:
                                                              initState.oneNotification?.data,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            } else if ((initState.oneNotification?.data.typePath ??
                                                    '') ==
                                                'boutique') {
                                              context.read<BoutiquesBloc>().add(
                                                    BoutiquesEvent.getInfoBoutique(
                                                      uid: initState
                                                              .oneNotification?.data.uidStore ??
                                                          '',
                                                    ),
                                                  );
                                              context.navigateTo(
                                                DashboardRoute(
                                                  children: [
                                                    HomeAutoRouterRoute(
                                                      children: [
                                                        BoutiquesDescriptionRoute(
                                                          lastPath:
                                                              'notfication_info_notfication_description',
                                                          newsNotificationInfo:
                                                              initState.oneNotification?.data,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                            } else if ((initState.oneNotification?.data.typePath ??
                                                    '') ==
                                                'gift_card') {
                                              context.navigateTo(
                                                DashboardRoute(
                                                  children: [
                                                    HomeAutoRouterRoute(
                                                      children: [
                                                        GiftCardRoute(
                                                          lastPath:
                                                              'notfication_info_notfication_description',
                                                          newsNotificationInfo:
                                                              initState.oneNotification?.data,
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
                                              (initState.oneNotification?.data.titleButton ?? ''),
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
                    return (initState.oneNotification?.data.typeVideo ?? '') == 'original'
                        ? Scaffold(
                            backgroundColor: BlindChickenColors.activeBorderTextField,
                            body: NewsVideoPlayer(
                              url: initState.oneNotification?.data.video ?? '',
                              image: initState.oneNotification?.data.videoImage ?? '',
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
                            url: initState.oneNotification?.data.video ?? '',
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
