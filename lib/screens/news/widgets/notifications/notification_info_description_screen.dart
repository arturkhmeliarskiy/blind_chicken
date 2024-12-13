import 'package:appmetrica_plugin/appmetrica_plugin.dart';
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
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class NotificationInfoDescriptionScreen extends StatefulWidget {
  const NotificationInfoDescriptionScreen({
    super.key,
    required this.info,
  });

  final NotificationInfoItemDataModel info;

  @override
  State<NotificationInfoDescriptionScreen> createState() =>
      _NotificationInfoDescriptionScreenState();
}

class _NotificationInfoDescriptionScreenState extends State<NotificationInfoDescriptionScreen> {
  final BlindChickenShowDialogError _blindChickenNewsInfoShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogNewsInfoError = false;
  bool _isFullScreenVideo = false;
  double _aspectRatio = 0.0;
  bool _isSwipe = true;

  @override
  void initState() {
    context.read<NewsBloc>().add(NewsEvent.updateReadNews(
          id: widget.info.id,
          typeNews: 'notice',
        ));
    AppMetrica.reportEvent('Страница описания уведомления id ${widget.info.id}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocListener<NewsBloc, NewsState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.isError ?? false) {
              final typeError = initState.typeError ?? '';
              if (!_isShowDialogNewsInfoError && typeError == 'описание notice') {
                _isShowDialogNewsInfoError = true;
                _blindChickenNewsInfoShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: initState.errorMessage ?? '',
                  widget: BlocBuilder<NewsBloc, NewsState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        preloadDataCompleted: (value) {
                          if (value.isLoadErrorButton ?? false) {
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
                          } else {
                            return Text(
                              'Повторить',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    color: BlindChickenColors.backgroundColor,
                                  ),
                              textAlign: TextAlign.center,
                            );
                          }
                        },
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                  onRepeatRequest: () {
                    context.read<NewsBloc>().add(NewsEvent.updateReadNews(
                          id: widget.info.id,
                          typeNews: 'notice',
                        ));
                  },
                );
              }
            } else {
              if (_isShowDialogNewsInfoError) {
                _isShowDialogNewsInfoError = false;
                _blindChickenNewsInfoShowDialogError.closeShowDialog();
              }
            }
          },
          orElse: () {},
        );
      },
      child: !_isFullScreenVideo
          ? Scaffold(
              body: SafeArea(
                child: ListView(children: [
                  const AppBarBlindChicken(),
                  GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.velocity.pixelsPerSecond.dx > 0) {
                        context.navigateTo(
                          NewsInfoRoute(
                            indexPage: 2,
                          ),
                        );
                        AppMetrica.reportEvent('Список новостей');
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
                          AppMetrica.reportEvent('Список новостей');
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
                                          AppMetrica.reportEvent('Список новостей');
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
                                    text: widget.info.title,
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
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
                              DateInfo.dateFormat(widget.info.createAt),
                              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                    color: BlindChickenColors.textInput,
                                  ),
                            ),
                            if (widget.info.typeMedia == 'images' && widget.info.images.length == 1)
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context.navigateTo(
                                        NewsPreviewMediaRoute(
                                          media: widget.info.images,
                                          goBotton: () {
                                            context.back();
                                          },
                                          selectIndex: 0,
                                        ),
                                      );
                                    },
                                    child: CachedNetworkImage(
                                      imageUrl: widget.info.images.first.imageUrl,
                                      width:
                                          MediaQuery.of(context).orientation == Orientation.portrait
                                              ? width
                                              : width / 2,
                                      height: 250,
                                      fit: BoxFit.cover,
                                      errorWidget: (context, url, error) => const Icon(Icons.error),
                                    ),
                                  ),
                                ],
                              ),
                            if (widget.info.typeMedia == 'images' && widget.info.images.length > 1)
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  NewsSlider(
                                    media: widget.info.images,
                                    goBotton: () {
                                      context.back();
                                    },
                                    onTap: (index) {
                                      context.pushRoute(
                                        NewsPreviewMediaRoute(
                                          selectIndex: index,
                                          media: widget.info.images,
                                          goBotton: () {
                                            context.back();
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            if (widget.info.typeMedia == 'video' &&
                                widget.info.typeVideo == 'youtube')
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  NewsYouTubeVideoPlayer(
                                    url: widget.info.video,
                                    onEnterFullScreen: () {
                                      setState(() {
                                        _isFullScreenVideo = true;
                                      });
                                    },
                                    onExitFullScreen: () {},
                                  ),
                                ],
                              ),
                            if (widget.info.typeMedia == 'video' &&
                                widget.info.typeVideo == 'original')
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  NewsVideoPlayer(
                                    url: widget.info.video,
                                    image: widget.info.videoImage,
                                    isFullScreenVideo: _isFullScreenVideo,
                                    videoImageHeight: widget.info.videoImageHeight,
                                    videoImageWeight: widget.info.videoImageWeight,
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
                              widget.info.description,
                              textStyle: Theme.of(context).textTheme.displayMedium,
                              onTapUrl: (url) async {
                                return HandlerLinksNews.handlerLinks(
                                  context: context,
                                  url: url,
                                  titleScreen: 'notfication_info_description',
                                  titleAppMetrica:
                                      'Переход по ссылке из cтраницы описания уведомления',
                                  newsNotificationInfo: widget.info,
                                );
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (widget.info.path.isNotEmpty)
                              GestureDetector(
                                onTap: () {
                                  if (widget.info.typePath == 'catalog') {
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.getInfoProducts(
                                            path: widget.info.path,
                                            isCleanHistory: true,
                                          ),
                                        );
                                    context.navigateTo(DashboardRoute(children: [
                                      HomeAutoRouterRoute(
                                        children: [
                                          CatalogRoute(
                                            title: '',
                                            url: widget.info.path,
                                            lastPath: 'notfication_info_description',
                                            newsNotificationInfo: widget.info,
                                          ),
                                        ],
                                      ),
                                    ]));
                                  } else if (widget.info.typePath == 'product') {
                                    context.read<CatalogBloc>().add(
                                          CatalogEvent.getInfoProduct(
                                            code: widget.info.code,
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
                                              CardInfoRoute(
                                                isLike: false,
                                                listItems: const [],
                                                favouritesProducts: const [],
                                                isChildRoute: false,
                                                lastPath: 'notfication_info_description',
                                                newsNotificationInfo: widget.info,
                                                codeProduct: widget.info.code,
                                                titleScreen: 'Уведомление',
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  } else if (widget.info.typePath == 'boutique') {
                                    context.read<BoutiquesBloc>().add(
                                          BoutiquesEvent.getInfoBoutique(
                                            uid: widget.info.uidStore,
                                          ),
                                        );
                                    context.navigateTo(
                                      DashboardRoute(
                                        children: [
                                          HomeAutoRouterRoute(
                                            children: [
                                              BoutiquesDescriptionRoute(
                                                lastPath: 'notfication_info_description',
                                                newsNotificationInfo: widget.info,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  } else if (widget.info.typePath == 'gift_card') {
                                    context.navigateTo(
                                      DashboardRoute(
                                        children: [
                                          HomeAutoRouterRoute(
                                            children: [
                                              GiftCardRoute(
                                                lastPath: 'notfication_info_description',
                                                newsNotificationInfo: widget.info,
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
                                    widget.info.titleButton,
                                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
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
                  ),
                ]),
              ),
            )
          : widget.info.typeVideo == 'original'
              ? Scaffold(
                  backgroundColor: BlindChickenColors.activeBorderTextField,
                  body: NewsVideoPlayer(
                    url: widget.info.video,
                    image: widget.info.videoImage,
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
                  url: widget.info.video,
                  onEnterFullScreen: () {},
                  onExitFullScreen: () {
                    setState(() {
                      _isFullScreenVideo = false;
                    });
                  },
                ),
    );
  }
}
