import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_item_tab_info.dart';
import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class NewsTabInfo extends StatefulWidget {
  const NewsTabInfo({
    super.key,
    required this.goBack,
    required this.onJump,
  });

  final VoidCallback goBack;
  final VoidCallback onJump;

  @override
  State<NewsTabInfo> createState() => _NewsTabInfoState();
}

class _NewsTabInfoState extends State<NewsTabInfo> {
  DateTime lastTime = DateTime.now();
  bool _isLoading = false;
  double _historyPosition = 0.0;

  void _loadMoreData(double position) {
    if (_historyPosition > position) {
      context.read<NewsBloc>().add(
            NewsEvent.checkButtonTop(
              isButtonTop: _historyPosition >= position && position > 0,
            ),
          );
    } else {
      if (_historyPosition != position) {
        context.read<NewsBloc>().add(
              NewsEvent.checkButtonTop(
                isButtonTop: false,
              ),
            );
      }
    }
    _historyPosition = position;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  if (initState.isLoadPagination != null) {
                    _isLoading = initState.isLoadPagination ?? false;
                  }

                  if (initState.news.list.isNotEmpty) {
                    return SafeArea(
                      bottom: false,
                      child: Container(
                        decoration: BoxDecoration(
                          color: BlindChickenColors.borderBottomColor,
                          image: DecorationImage(
                            image: AssetImage('assets/images/news_background.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: NotificationListener<ScrollNotification>(
                          onNotification: (scrollNotification) {
                            _loadMoreData(scrollNotification.metrics.pixels);

                            return true;
                          },
                          child: ListView.builder(
                            itemCount: initState.news.list.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: index == 0 ? 46 : 0,
                                  ),
                                  VisibilityDetector(
                                    key: Key(index.toString()),
                                    onVisibilityChanged: (visibilityInfo) {
                                      if (!(initState.isError ?? false)) {
                                        if (initState.news.list.length - 6 < index &&
                                            (initState.news.list.length - 3) ~/ 10 !=
                                                initState.offsetNews) {
                                          context.read<NewsBloc>().add(NewsEvent.paginationNews());
                                        } else {
                                          if (visibilityInfo.visibleFraction > 0.0 &&
                                              initState.news.list[index].isViewed) {
                                            context.read<NewsBloc>().add(
                                                  NewsEvent.updateReadNews(
                                                    id: initState.news.list[index].id,
                                                    typeNews: 'news',
                                                  ),
                                                );
                                            logging(index.toString(), stackTrace: StackTrace.current);
                                          }
                                        }

                                        final updateData = GetIt.I.get<UpdateDataService>();
                                        if (initState.news.list[index].typeMedia != 'video' &&
                                            initState.news.list[index].typeVideo != 'original' &&
                                            updateData.videoController.value.isInitialized &&
                                            updateData.videoController.value.duration !=
                                                Duration.zero) {
                                          // context.read<NewsBloc>().add(
                                          //       NewsEvent.checkiDisabledVideo(
                                          //         isDisabledVideo: true,
                                          //       ),
                                          //     );
                                        } else {
                                          // context.read<NewsBloc>().add(
                                          //       NewsEvent.checkiDisabledVideo(
                                          //         isDisabledVideo: false,
                                          //       ),
                                          //     );
                                        }
                                      }
                                    },
                                    child: NewsItemTabInfo(
                                      item: initState.news.list[index],
                                      onTap: () {
                                        context.navigateTo(
                                          NewsInfoDescriptionRoute(
                                            info: initState.news.list[index],
                                          ),
                                        );
                                      },
                                      onGoTap: () {
                                        if (initState.news.list[index].typePath == 'catalog') {
                                          AppMetrica.reportEvent(
                                              'Переход в каталог из списка новостей по кнопке');
                                          context.read<CatalogBloc>().add(
                                                CatalogEvent.getInfoProducts(
                                                  path: initState.news.list[index].path,
                                                  isCleanHistory: true,
                                                ),
                                              );

                                          context.navigateTo(
                                            HomeAutoRouterRoute(
                                              children: [
                                                CatalogRoute(
                                                  title: '',
                                                  url: initState.news.list[index].path,
                                                  lastPath: 'news',
                                                ),
                                              ],
                                            ),
                                          );
                                        } else if (initState.news.list[index].typePath ==
                                            'product') {
                                          AppMetrica.reportEvent(
                                              'Переход в описание товара из списка новостей по кнопке');
                                          context.navigateTo(
                                            HomeAutoRouterRoute(
                                              children: [
                                                CardInfoRoute(
                                                  isLike: false,
                                                  listItems: const [],
                                                  favouritesProducts: const [],
                                                  isChildRoute: false,
                                                  lastPath: 'news',
                                                  codeProduct: initState.news.list[index].code,
                                                  titleScreen: 'Список новостей',
                                                ),
                                              ],
                                            ),
                                          );
                                        } else if (initState.news.list[index].typePath ==
                                            'boutique') {
                                          AppMetrica.reportEvent(
                                              'Переход в описание бутика из списка новостей по кнопке');
                                          context.read<BoutiquesBloc>().add(
                                                BoutiquesEvent.getInfoBoutique(
                                                  uid: initState.news.list[index].uidStore,
                                                ),
                                              );
                                          context.navigateTo(
                                            HomeAutoRouterRoute(
                                              children: [
                                                BoutiquesDescriptionRoute(
                                                  lastPath: 'news',
                                                ),
                                              ],
                                            ),
                                          );
                                        } else if (initState.news.list[index].typePath ==
                                            'gift_card') {
                                          AppMetrica.reportEvent(
                                              'Переход на страницу подарочной карты из списка новостей по кнопке');
                                          context.navigateTo(
                                            HomeAutoRouterRoute(
                                              children: [
                                                GiftCardRoute(
                                                  lastPath: 'news',
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                  if (_isLoading && index == initState.news.list.length - 1)
                                    Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.all(8),
                                      child: CircularProgressIndicator(
                                        strokeWidth: 3,
                                      ),
                                    ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  } else {
                    return LayoutBuilder(builder: (context, constraint) {
                      return Container(
                        height: constraint.maxHeight,
                        width: constraint.maxWidth,
                        alignment: Alignment.center,
                        color: Colors.transparent,
                        child: Text(
                          'Нет новостей',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      );
                    });
                  }
                },
                orElse: () => const SizedBox(),
              );
            }),
            BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  if (initState.isButtonTop) {
                    return GestureDetector(
                      onTap: () {
                        widget.onJump();
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        margin: const EdgeInsets.only(left: 15, bottom: 15),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: BlindChickenColors.activeBorderTextField,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/chevron-top.svg',
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
                orElse: () => const SizedBox(),
              );
            })
          ],
        ),
        BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
          return state.maybeMap(
            load: (value) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                  backgroundColor: Colors.grey.shade400,
                ),
              );
            },
            orElse: () => const SizedBox(),
          );
        }),
      ],
    );
  }
}

class ForegroundDetector extends StatefulWidget {
  const ForegroundDetector({
    super.key,
    required this.child,
    required this.onForegroundChanged,
  });

  final ValueChanged<bool> onForegroundChanged;
  final Widget child;

  @override
  ForegroundDetectorState createState() => ForegroundDetectorState();
}

class ForegroundDetectorState extends State<ForegroundDetector> {
  bool get isForeground => _isForeground ?? false;
  bool? _isForeground;

  @override
  Widget build(BuildContext context) {
    final isForeground = TickerMode.of(context);
    if (_isForeground != isForeground) {
      _isForeground = isForeground;
      widget.onForegroundChanged(isForeground);
    }
    return widget.child;
  }
}
