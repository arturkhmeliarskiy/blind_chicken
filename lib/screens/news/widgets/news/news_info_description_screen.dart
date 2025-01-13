import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/handler_links_news.dart';
import 'package:blind_chicken/screens/news/widgets/news_media_slider.dart';
import 'package:blind_chicken/screens/news/widgets/news_slider.dart';
import 'package:blind_chicken/screens/news/widgets/news_video_player.dart';
import 'package:blind_chicken/screens/news/widgets/news_youtube_video_player.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class NewsInfoDescriptionScreen extends StatefulWidget {
  const NewsInfoDescriptionScreen({
    super.key,
    required this.info,
  });

  final NewsInfoItemDataModel info;

  @override
  State<NewsInfoDescriptionScreen> createState() => _NewsInfoDescriptionScreenState();
}

class _NewsInfoDescriptionScreenState extends State<NewsInfoDescriptionScreen> {
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
          typeNews: 'news',
        ));
    AppMetrica.reportEvent('Страница описания новости id ${widget.info.id}');
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
              if (!_isShowDialogNewsInfoError && typeError == 'описание news') {
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
                    context.read<NewsBloc>().add(
                          NewsEvent.updateReadNews(
                            id: widget.info.id,
                            typeNews: 'news',
                          ),
                        );
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
                bottom: false,
                child: Container(
                  decoration: BoxDecoration(
                    color: BlindChickenColors.borderBottomColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/news_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListView(children: [
                    const AppBarBlindChicken(),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: BlindChickenColors.backgroundColor,
                      ),
                      child: GestureDetector(
                        onHorizontalDragUpdate: (details) {},
                        onHorizontalDragEnd: (DragEndDetails details) {
                          if (details.velocity.pixelsPerSecond.dx > 0) {
                            context.navigateTo(
                              NewsInfoRoute(
                                indexPage: 0,
                              ),
                            );
                            context.read<NewsBloc>().add(NewsEvent.checkingReadNews());
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
                                  indexPage: 0,
                                ),
                              );
                              context.read<NewsBloc>().add(NewsEvent.checkingReadNews());
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
                                                  indexPage: 0,
                                                ),
                                              );
                                              context
                                                  .read<NewsBloc>()
                                                  .add(NewsEvent.checkingReadNews());
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
                                if (widget.info.typeMedia == 'media')
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      NewsMediaSlider(
                                        images: widget.info.images,
                                        videos: widget.info.videos,
                                        borderRadius: 0,
                                        goBotton: () {
                                          context.back();
                                        },
                                        onTap: (index) {
                                          context.navigateTo(
                                            NewsPreviewMediaInfoRoute(
                                              selectedIndex: index,
                                              images: widget.info.images,
                                              videos: widget.info.videos,
                                              goBotton: () {
                                                context.back();
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                if (widget.info.typeMedia == 'images' &&
                                    widget.info.images.length == 1)
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
                                          imageUrl: widget.info.images.first,
                                          width: MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? width
                                              : width / 2,
                                          fit: BoxFit.cover,
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                    ],
                                  ),
                                if (widget.info.typeMedia == 'images' &&
                                    widget.info.images.length > 1)
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      NewsSlider(
                                        media: widget.info.images,
                                        borderRadius: 0,
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
                                      titleScreen: 'news_info_description',
                                      titleAppMetrica:
                                          'Переход по ссылке из cтраницы описания новости',
                                      newsInfo: widget.info,
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
                                if (widget.info.titleButton.isNotEmpty)
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
                                                lastPath: 'news_info_description',
                                                newsInfo: widget.info,
                                              ),
                                            ],
                                          ),
                                        ]));
                                      } else if (widget.info.typePath == 'product') {
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.getInfoProduct(
                                                code: widget.info.code,
                                                titleScreen: 'Описание новостей',
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
                                                    lastPath: 'news_info_description',
                                                    newsInfo: widget.info,
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
                                                    lastPath: 'news_info_description',
                                                    newsInfo: widget.info,
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
                                                    lastPath: 'news_info_description',
                                                    newsInfo: widget.info,
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
                                      margin: EdgeInsets.only(bottom: 12),
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
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
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
