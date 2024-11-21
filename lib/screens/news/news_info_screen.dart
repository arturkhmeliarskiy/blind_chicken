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
  });

  final int indexPage;
  final String? idNews;

  @override
  State<NewsInfoScreen> createState() => _NewsInfoScreenState();
}

class _NewsInfoScreenState extends State<NewsInfoScreen> with TickerProviderStateMixin {
  final BlindChickenShowDialogError _blindChickenNewsInfoShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogNewsInfoError = false;
  late final TabController _tabController;
  bool _isSwipe = true;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    if (widget.indexPage != 0) {
      _tabController.animateTo(widget.indexPage);
    } else {
      context.read<NewsBloc>().add(const NewsEvent.getNews());
      final idNews = widget.idNews;
      if (idNews != null) {
        context.read<NewsBloc>().add(NewsEvent.updateReadNews(
              id: idNews,
              typeNews: 'news',
            ));
      }
    }
    AppMetrica.reportEvent('Страница новостей');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant NewsInfoScreen oldWidget) {
    final idNews = widget.idNews;
    if (idNews != null) {
      context.read<NewsBloc>().add(const NewsEvent.getNews());
      context.read<NewsBloc>().add(NewsEvent.updateReadNews(
            id: idNews,
            typeNews: 'news',
          ));
    }

    AppMetrica.reportEvent('Страница новостей');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                          context.read<NewsBloc>().add(const NewsEvent.getNews());
                          break;
                        case 'медиа':
                          context.read<NewsBloc>().add(const NewsEvent.getMedia());
                          break;
                        case 'уведомления':
                          context.read<NewsBloc>().add(const NewsEvent.getNotifications());
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
                    _tabController.animateTo(
                      int.parse(
                        initState.listNewsPath.last,
                      ),
                    );
                    setState(() {
                      _tabController.index = int.parse(
                        initState.listNewsPath.last,
                      );
                    });
                  }
                }
              }
            },
            orElse: () {},
          );
        },
        child: GestureDetector(
          onVerticalDragUpdate: (details) {},
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.velocity.pixelsPerSecond.dx > 0) {
              context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
            }
          },
          child: PopScope(
            canPop: false,
            onPopInvoked: (value) {
              if (_isSwipe && !value) {
                context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
              }
            },
            child: SafeArea(
              child: Scaffold(
                body: Column(
                  children: <Widget>[
                    const AppBarBlindChicken(),
                    TabBar.secondary(
                      padding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      controller: _tabController,
                      onTap: (index) {
                        setState(() {
                          _tabController.index = index;
                          // _selectedIndex = index;
                        });

                        if (index == 0) {
                          context.read<NewsBloc>().add(const NewsEvent.getNews());
                          AppMetrica.reportEvent(
                              'Переход на страницу новостей из верхней панели навигации');
                        } else if (index == 1) {
                          AppMetrica.reportEvent(
                              'Переход на страницу медиа из верхней панели навигации');
                        } else if (index == 2) {
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
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontWeight:
                                          _tabController.index == 0 ? FontWeight.w700 : null,
                                    ),
                              ),
                              BlocBuilder<NewsBloc, NewsState>(
                                builder: (context, state) {
                                  return state.maybeMap(
                                    preloadDataCompleted: (initState) {
                                      return _countBadges(initState.countBadgesNews, context);
                                    },
                                    load: (initState) {
                                      return _countBadges(initState.countBadgesNews ?? 0, context);
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
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontWeight:
                                          _tabController.index == 1 ? FontWeight.w700 : null,
                                      fontSize: _tabController.index == 1 ? 13.8 : null,
                                    ),
                              ),
                              BlocBuilder<NewsBloc, NewsState>(
                                builder: (context, state) {
                                  return state.maybeMap(
                                    preloadDataCompleted: (initState) {
                                      return _countBadges(initState.countBadgesMedia, context);
                                    },
                                    load: (initState) {
                                      return _countBadges(initState.countBadgesMedia ?? 0, context);
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
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontWeight:
                                          _tabController.index == 2 ? FontWeight.w700 : null,
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
                                          initState.countBadgesNotificatios ?? 0, context);
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
                    const Divider(
                      height: 1,
                      color: BlindChickenColors.borderBottomColor,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          NewsTabInfo(
                            goBack: () {
                              context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

Widget _countBadges(int count, BuildContext context) {
  return count > 0
      ? Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
              ],
            ),
          ],
        )
      : SizedBox();
}
