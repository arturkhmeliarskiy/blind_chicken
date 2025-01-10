import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/news/widgets/media/media_tab_info.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_tab_info.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notifications_tab_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class NewsInfoScreen extends StatefulWidget {
  const NewsInfoScreen({
    super.key,
    required this.indexPage,
    this.idNews,
    this.typeNews,
  });

  final int indexPage;
  final String? idNews;
  final String? typeNews;

  @override
  State<NewsInfoScreen> createState() => _NewsInfoScreenState();
}

class _NewsInfoScreenState extends State<NewsInfoScreen> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  final BlindChickenShowDialogError _blindChickenNewsInfoShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogNewsInfoError = false;
  TabController? _tabController;
  bool _isSwipe = true;
  String _iDNews = '';

  @override
  void didChangeDependencies() {
    _tabController = TabController(length: 3, vsync: this);
    if (widget.indexPage != 0) {
      _tabController?.animateTo(widget.indexPage);
    } else {
      final idNews = widget.idNews;
      if (idNews != null) {
        context.read<NewsBloc>().add(NewsEvent.updateReadNews(
              id: idNews,
              typeNews: widget.typeNews ?? '',
            ));
      }
    }
    AppMetrica.reportEvent('Страница новостей');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant NewsInfoScreen oldWidget) {
    final idNews = widget.idNews;
    if (idNews != null && idNews != _iDNews) {
      _iDNews = idNews;
      context.read<NewsBloc>().add(NewsEvent.updateReadNews(
            id: idNews,
            typeNews: widget.typeNews ?? '',
          ));
      _tabController?.animateTo(widget.indexPage);
    }

    AppMetrica.reportEvent('Страница новостей');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? swipeDirection;
    return BlocListener<NewsBloc, NewsState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.isError ?? false) {
              final typeError = initState.typeError ?? '';
              if (!_isShowDialogNewsInfoError &&
                  typeError != 'описание news' &&
                  typeError != 'описание media' &&
                  typeError != 'описание notice') {
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
                    switch (typeError) {
                      case 'новости':
                        context.read<NewsBloc>().add(NewsEvent.getNews(isGoBack: false));
                        break;
                      case 'медиа':
                        context.read<NewsBloc>().add(const NewsEvent.getMedia());
                        break;
                      case 'уведомления':
                        context.read<NewsBloc>().add(const NewsEvent.getNotifications());
                        break;
                      case 'пагинация новости':
                        context.read<NewsBloc>().add(NewsEvent.paginationNews());
                        break;
                    }
                  },
                );
              }
            } else {
              if (_isShowDialogNewsInfoError) {
                _isShowDialogNewsInfoError = false;
                _blindChickenNewsInfoShowDialogError.closeShowDialog();
              }
              if (!initState.isNotification) {
                if (initState.listNewsPath.isEmpty) {
                  context.back();
                  setState(() {
                    _isSwipe = false;
                  });
                } else {
                  if (initState.isGoBack ?? false) {
                    _tabController?.animateTo(
                      int.parse(
                        initState.listNewsPath.last,
                      ),
                    );

                    _tabController?.index = int.parse(
                      initState.listNewsPath.last,
                    );
                    setState(() {});
                  }
                }
              }
            }
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          PopScope(
            canPop: false,
            onPopInvoked: (value) {
              if (_isSwipe && !value) {
                context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
              }
            },
            child: BlocBuilder<TopBannerBloc, TopBannerState>(
              builder: (context, state) {
                return state.maybeMap(
                  preloadData: (initState) {
                    return Scaffold(
                      body: DefaultTabController(
                        length: 3,
                        child: NestedScrollView(
                          floatHeaderSlivers: true,
                          controller: _scrollController,
                          headerSliverBuilder: (context, value) {
                            return [
                              SliverOverlapAbsorber(
                                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                                sliver: SliverAppBar(
                                  forceElevated: value,
                                  pinned: true,
                                  floating: true,
                                  toolbarHeight: initState.info.data.title.isNotEmpty
                                      ? kToolbarHeight * 1.65
                                      : kToolbarHeight,
                                  title: AppBarBlindChicken(),
                                  titleSpacing: 0,
                                  foregroundColor: BlindChickenColors.backgroundColor,
                                  backgroundColor: BlindChickenColors.backgroundColor,
                                  surfaceTintColor: BlindChickenColors.backgroundColor,
                                  bottom: TabBar.secondary(
                                    padding: EdgeInsets.zero,
                                    labelPadding: EdgeInsets.zero,
                                    indicatorPadding: EdgeInsets.zero,
                                    indicatorSize: TabBarIndicatorSize.label,
                                    dividerColor: BlindChickenColors.borderBottomColor,
                                    controller: _tabController,
                                    onTap: (index) {
                                      setState(() {});
                                      if (index == 0) {
                                        context
                                            .read<NewsBloc>()
                                            .add(NewsEvent.getNews(isGoBack: false));
                                        AppMetrica.reportEvent(
                                            'Переход на страницу новостей из верхней панели навигации');
                                      } else if (index == 1) {
                                        context.read<NewsBloc>().add(const NewsEvent.getMedia());
                                        AppMetrica.reportEvent(
                                            'Переход на страницу медиа из верхней панели навигации');
                                      } else if (index == 2) {
                                        context
                                            .read<NewsBloc>()
                                            .add(const NewsEvent.getNotifications());
                                        AppMetrica.reportEvent(
                                            'Переход на страницу уведомлений из верхней панели навигации');
                                      }
                                    },
                                    tabs: <Widget>[
                                      Tab(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Новости',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: _tabController?.index == 0
                                                        ? FontWeight.w700
                                                        : null,
                                                  ),
                                            ),
                                            BlocBuilder<NewsBloc, NewsState>(
                                              builder: (context, state) {
                                                return state.maybeMap(
                                                  preloadDataCompleted: (initState) {
                                                    return _countBadges(
                                                        initState.countBadgesNews, context);
                                                  },
                                                  load: (initState) {
                                                    return _countBadges(
                                                        initState.countBadgesNews ?? 0, context);
                                                  },
                                                  orElse: () => SizedBox(),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                      Tab(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Медиа',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: _tabController?.index == 1
                                                        ? FontWeight.w700
                                                        : null,
                                                    fontSize:
                                                        _tabController?.index == 1 ? 13.8 : null,
                                                  ),
                                            ),
                                            BlocBuilder<NewsBloc, NewsState>(
                                              builder: (context, state) {
                                                return state.maybeMap(
                                                  preloadDataCompleted: (initState) {
                                                    return _countBadges(
                                                        initState.countBadgesMedia, context);
                                                  },
                                                  load: (initState) {
                                                    return _countBadges(
                                                        initState.countBadgesMedia ?? 0, context);
                                                  },
                                                  orElse: () => SizedBox(),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Tab(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Уведомления',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: _tabController?.index == 2
                                                        ? FontWeight.w700
                                                        : null,
                                                  ),
                                            ),
                                            BlocBuilder<NewsBloc, NewsState>(
                                              builder: (context, state) {
                                                return state.maybeMap(
                                                  preloadDataCompleted: (initState) {
                                                    return _countBadges(
                                                        initState.countBadgesNotificatios, context);
                                                  },
                                                  load: (initState) {
                                                    return _countBadges(
                                                        initState.countBadgesNotificatios ?? 0,
                                                        context);
                                                  },
                                                  orElse: () => SizedBox(),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ];
                          },
                          body: TabBarView(
                            controller: _tabController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              NewsTabInfo(
                                goBack: () {
                                  context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
                                },
                                onJump: () {
                                  _scrollController.jumpTo(0.0);
                                },
                              ),
                              MediaTabInfo(
                                goBack: () {
                                  context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
                                },
                                idNews: widget.idNews,
                              ),
                              NotificationsTabInfo(
                                goBack: () {
                                  context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
                                },
                                idNews: widget.idNews,
                                onJump: () {
                                  _scrollController.jumpTo(0.0);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                );
              },
            ),
          ),
          BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return GestureDetector(
                    onPanUpdate: (details) {
                      swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
                    },
                    onPanEnd: (details) {
                      if (swipeDirection == null) {
                        return;
                      }
                      if (swipeDirection == 'left') {}
                      if (swipeDirection == 'right') {
                        context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
                      }
                    },
                    child: SafeArea(
                      child: Container(
                        height:
                            MediaQuery.of(context).size.height - (initState.isButtonTop ? 220 : 0),
                        width: 50,
                        color: Colors.transparent,
                      ),
                    ),
                  );
                },
                orElse: () => const SizedBox(),
              );
            },
          )
        ],
      ),
    );
  }
}

Widget _countBadges(int count, BuildContext context) {
  return count > 0
      ? Row(
          children: [
            SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 16,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 5,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    count > 10 ? '+10' : count.toString(),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: BlindChickenColors.backgroundColor,
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        )
      : SizedBox();
}
