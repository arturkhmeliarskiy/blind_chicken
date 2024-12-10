import 'dart:developer';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_item_tab_info.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class NewsTabInfo extends StatefulWidget {
  const NewsTabInfo({
    super.key,
    required this.goBack,
  });

  final VoidCallback goBack;

  @override
  State<NewsTabInfo> createState() => _NewsTabInfoState();
}

class _NewsTabInfoState extends State<NewsTabInfo> {
  final ScrollController _scrollController = ScrollController();
  double _historyPosition = 0.0;
  double _paginationPosition = 0.0;
  int _currentPage = 0;
  double _boundaryOffset = 0.5;
  bool _isLoading = false;

  @override
  void initState() {
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  void _loadMoreData() async {
    context.read<NewsBloc>().add(
          NewsEvent.checkButtonTop(
            isButtonTop: _historyPosition > _scrollController.position.pixels &&
                _scrollController.position.pixels > 0,
          ),
        );

    // bool isActive = (_scrollController.position.maxScrollExtent - 2500).toInt() >
    //         _paginationPosition.toInt() &&
    //     (_scrollController.position.maxScrollExtent - 2500).toInt() != _paginationPosition.toInt();
    // //load more data
    // if ((_scrollController.offset > _scrollController.position.maxScrollExtent * _boundaryOffset) &&
    //     isActive) {
    //   _paginationPosition = _scrollController.position.maxScrollExtent - 2500;
    //   _currentPage++;
    //   _boundaryOffset = 1 - 1 / (_currentPage * 2);

    //   log(_currentPage.toString());

    //   print('Запрос:  ${_count++}');
    //   // context.read<NewsBloc>().add(NewsEvent.paginationNews());
    // }

    _historyPosition = _scrollController.position.pixels;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.velocity.pixelsPerSecond.dx > 0) {
          widget.goBack();
        }
      },
      child: Stack(
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

                    if (initState.offsetNews == 1) {
                      _paginationPosition = 0;
                      _currentPage = 0;
                      _boundaryOffset = 0.5;
                    }
                    if (initState.news.list.isNotEmpty) {
                      return Container(
                        decoration: BoxDecoration(
                          color: BlindChickenColors.borderBottomColor,
                          image: DecorationImage(
                            image: AssetImage('assets/images/news_background.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ListView.builder(
                          itemCount: initState.newsList.length,
                          padding: EdgeInsets.zero,
                          controller: _scrollController,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                VisibilityDetector(
                                  key: Key(index.toString()),
                                  onVisibilityChanged: (visibilityInfo) {
                                    if (visibilityInfo.visibleFraction > 0.0) {
                                      context.read<NewsBloc>().add(
                                            NewsEvent.updateReadNews(
                                              id: initState.newsList[index].id,
                                              typeNews: 'news',
                                            ),
                                          );
                                      log(index.toString());
                                    }
                                    if (initState.newsList.length - 5 < index &&
                                        (initState.newsList.length - 3) ~/ 10 !=
                                            initState.offsetNews) {
                                      context.read<NewsBloc>().add(NewsEvent.paginationNews());
                                    }

                                    final updateData = GetIt.I.get<UpdateDataService>();
                                    if (initState.newsList[index].typeMedia != 'video' &&
                                        initState.newsList[index].typeVideo != 'original' &&
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
                                  },
                                  child: NewsItemTabInfo(
                                    item: initState.newsList[index],
                                    onTap: () {
                                      context.navigateTo(
                                        NewsInfoDescriptionRoute(
                                          info: initState.newsList[index],
                                        ),
                                      );
                                    },
                                    onGoTap: () {
                                      if (initState.newsList[index].typePath == 'catalog') {
                                        AppMetrica.reportEvent(
                                            'Переход в каталог из списка новостей по кнопке');
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.getInfoProducts(
                                                path: initState.newsList[index].path,
                                                isCleanHistory: true,
                                              ),
                                            );

                                        context.navigateTo(
                                          HomeAutoRouterRoute(
                                            children: [
                                              CatalogRoute(
                                                title: '',
                                                url: initState.newsList[index].path,
                                                lastPath: 'news',
                                              ),
                                            ],
                                          ),
                                        );
                                      } else if (initState.newsList[index].typePath == 'product') {
                                        AppMetrica.reportEvent(
                                            'Переход в описание товара из списка новостей по кнопке');
                                        context.read<CatalogBloc>().add(
                                              CatalogEvent.getInfoProduct(
                                                code: initState.newsList[index].code,
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
                                                lastPath: 'news',
                                              ),
                                            ],
                                          ),
                                        );
                                      } else if (initState.newsList[index].typePath == 'boutique') {
                                        AppMetrica.reportEvent(
                                            'Переход в описание бутика из списка новостей по кнопке');
                                        context.read<BoutiquesBloc>().add(
                                              BoutiquesEvent.getInfoBoutique(
                                                uid: initState.newsList[index].uidStore,
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
                                      } else if (initState.newsList[index].typePath ==
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
                          _scrollController.jumpTo(0.0);
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
      ),
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
