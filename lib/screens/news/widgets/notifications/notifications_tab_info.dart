import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notification_item_tab_info.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class NotificationsTabInfo extends StatefulWidget {
  const NotificationsTabInfo({
    super.key,
    required this.goBack,
    required this.onJump,
    this.idNews,
  });

  final VoidCallback onJump;
  final VoidCallback goBack;
  final String? idNews;

  @override
  State<NotificationsTabInfo> createState() => _NotificationsTabInfoState();
}

class _NotificationsTabInfoState extends State<NotificationsTabInfo> {
  DateTime lastTime = DateTime.now();
  double _historyPosition = 0.0;
  double _paginationPosition = 0.0;

  @override
  void didChangeDependencies() {
    final idNews = widget.idNews;
    if (idNews != null) {
      context.read<NewsBloc>().add(NewsEvent.updateReadNews(
            id: idNews,
            typeNews: 'notice',
          ));
    }

    super.didChangeDependencies();
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
                            final currentScroll = scrollNotification.metrics.pixels;

                            if (_historyPosition > currentScroll) {
                              context.read<NewsBloc>().add(
                                    NewsEvent.checkButtonTop(
                                      isButtonTop:
                                          _historyPosition >= currentScroll && currentScroll > 0,
                                    ),
                                  );
                            } else {
                              if (scrollNotification.metrics.pixels >
                                      (scrollNotification.metrics.maxScrollExtent - 200) &&
                                  (scrollNotification.metrics.maxScrollExtent - 200) >
                                      _paginationPosition &&
                                  scrollNotification.metrics.pixels !=
                                      scrollNotification.metrics.maxScrollExtent) {
                                _paginationPosition =
                                    scrollNotification.metrics.maxScrollExtent - 200;

                                context
                                    .read<NewsBloc>()
                                    .add(const NewsEvent.paginationNotifications());

                                if (_historyPosition != scrollNotification.metrics.pixels) {
                                  context.read<NewsBloc>().add(
                                        NewsEvent.checkButtonTop(
                                          isButtonTop: false,
                                        ),
                                      );
                                }
                              }
                            }

                            _historyPosition = currentScroll;

                            return false;
                          },
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: initState.notificatios.list.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: index == 0 ? 56 : 0,
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
