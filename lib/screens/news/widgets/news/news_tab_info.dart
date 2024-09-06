import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_item_tab_info.dart';
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
  bool _isButtonTop = false;

  @override
  void initState() {
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        _isButtonTop = true;
      });
    } else {
      setState(() {
        _isButtonTop = false;
      });
    }
    if (_scrollController.position.pixels > (_scrollController.position.maxScrollExtent - 500) &&
        (_scrollController.position.maxScrollExtent - 500) > _paginationPosition &&
        _scrollController.position.pixels != _scrollController.position.maxScrollExtent) {
      setState(() {
        _paginationPosition = _scrollController.position.maxScrollExtent - 500;
      });
      context.read<NewsBloc>().add(const NewsEvent.paginationNews());
    }

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
                    if (initState.offsetNews == 1) {
                      _paginationPosition = 0;
                    }
                    if (initState.news.list.isNotEmpty) {
                      return Container(
                        color: BlindChickenColors.borderBottomColor,
                        child: ListView.builder(
                          controller: _scrollController,
                          itemCount: initState.news.list.length,
                          itemBuilder: (context, index) {
                            return NewsItemTabInfo(
                              item: initState.news.list[index],
                              onTap: () {
                                context.navigateTo(
                                  NewsInfoDescriptionRoute(
                                    info: initState.news.list[index],
                                  ),
                                );
                                AppMetrica.reportEvent('Страница новостей');
                              },
                              onGoTap: () {
                                if (initState.news.list[index].typePath == 'catalog') {
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
                                } else if (initState.news.list[index].typePath == 'product') {
                                  context.read<CatalogBloc>().add(
                                        CatalogEvent.getInfoProduct(
                                          code: initState.news.list[index].code,
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
                                } else if (initState.news.list[index].typePath == 'boutique') {
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
                                } else if (initState.news.list[index].typePath == 'gift_card') {
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
              if (_isButtonTop)
                GestureDetector(
                  onTap: () {
                    _scrollController.jumpTo(0.0);
                    setState(() {
                      _isButtonTop = false;
                    });
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
                )
              else
                const SizedBox()
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
