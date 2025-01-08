import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notification_item_tab_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class NotificationsTabInfo extends StatefulWidget {
  const NotificationsTabInfo({
    super.key,
    required this.goBack,
    required this.onHideHeader,
    required this.onShowHeader,
    required this.heightAppBar,
    required this.isShowHeader,
    this.idNews,
  });

  final VoidCallback onHideHeader;
  final VoidCallback onShowHeader;
  final double heightAppBar;
  final bool isShowHeader;
  final VoidCallback goBack;
  final String? idNews;

  @override
  State<NotificationsTabInfo> createState() => _NotificationsTabInfoState();
}

class _NotificationsTabInfoState extends State<NotificationsTabInfo> {
  ScrollController _scrollController = ScrollController();
  DateTime lastTime = DateTime.now();
  double _historyPosition = 0.0;
  double _paginationPosition = 0.0;

  @override
  void didChangeDependencies() {
    _scrollController = ScrollController(initialScrollOffset: !widget.isShowHeader ? 90 : 0);

    final idNews = widget.idNews;
    if (idNews != null) {
      context.read<NewsBloc>().add(NewsEvent.updateReadNews(
            id: idNews,
            typeNews: 'notice',
          ));
    }
    _scrollController.addListener(_loadMoreData);
    super.didChangeDependencies();
  }

  void _loadMoreData() async {
    context.read<NewsBloc>().add(
          NewsEvent.checkButtonTop(
            isButtonTop: _historyPosition > _scrollController.position.pixels &&
                _scrollController.position.pixels > 0,
          ),
        );

    // if (_historyPosition + 50 < _scrollController.position.pixels) {
    //   await onHideHeader();
    // }

    // if (_historyPosition - 50 > _scrollController.position.pixels &&
    //     _scrollController.position.pixels > 0) {
    //   await onShowHeader();
    // }

    // if (_scrollController.position.pixels < 0) {
    //   await onShowHeader();
    // }

    if (_scrollController.position.pixels > (_scrollController.position.maxScrollExtent - 200) &&
        (_scrollController.position.maxScrollExtent - 200) > _paginationPosition &&
        _scrollController.position.pixels != _scrollController.position.maxScrollExtent) {
      setState(() {
        _paginationPosition = _scrollController.position.maxScrollExtent - 200;
      });
      context.read<NewsBloc>().add(const NewsEvent.paginationNotifications());
    }
    _historyPosition = _scrollController.position.pixels;
  }

  onHideHeader() async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    final timeDifferenceHideHeader = DateTime.now().difference(lastTime).inMilliseconds;
    if (timeDifferenceHideHeader > 249) {
      widget.onHideHeader();
    }
  }

  onShowHeader() async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    final timeDifferenceShowHeader = DateTime.now().difference(lastTime).inMilliseconds;
    if (timeDifferenceShowHeader > 249) {
      widget.onShowHeader();
    }
  }

  @override
  void didUpdateWidget(covariant NotificationsTabInfo oldWidget) {
    final idNews = widget.idNews;
    if (idNews != null && oldWidget.idNews != idNews) {
      context.read<NewsBloc>().add(const NewsEvent.getNotifications());
      context.read<NewsBloc>().add(NewsEvent.updateReadNews(
            id: idNews,
            typeNews: 'notice',
          ));
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
                  if (initState.offsetNotificatios == 1) {
                    _paginationPosition = 0;
                  }
                  if (initState.notificatios.list.isNotEmpty) {
                    return Container(
                      decoration: BoxDecoration(
                        color: BlindChickenColors.borderBottomColor,
                        image: DecorationImage(
                          image: AssetImage('assets/images/news_background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: initState.notificatios.list.length < 10
                            ? ScrollController(
                                initialScrollOffset: 0,
                              )
                            : _scrollController,
                        itemCount: initState.notificatios.list.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: index == 0
                                    ? initState.notificatios.list.length < 10 &&
                                            !widget.isShowHeader
                                        ? 50
                                        : widget.heightAppBar
                                    : 0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.navigateTo(
                                    NotificationInfoDescriptionRoute(
                                      info: initState.notificatios.list[index],
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    NotificationItemTabInfo(
                                      item: initState.notificatios.list[index],
                                    ),
                                    if (initState.notificatios.list.length - 1 == index)
                                      SizedBox(
                                        height: 10,
                                      ),
                                  ],
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
                          'Нет уведомлений',
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
                      onTap: () async {
                        // await onShowHeader();
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
    );
  }
}
