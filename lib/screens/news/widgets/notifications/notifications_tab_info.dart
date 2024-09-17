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
  });

  final VoidCallback goBack;

  @override
  State<NotificationsTabInfo> createState() => _NotificationsTabInfoState();
}

class _NotificationsTabInfoState extends State<NotificationsTabInfo> {
  final ScrollController _scrollController = ScrollController();
  double _historyPosition = 0.0;
  double _paginationPosition = 0.0;
  bool _isButtonTop = false;

  @override
  void initState() {
    context.read<NewsBloc>().add(const NewsEvent.getNotifications());
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
                    if (initState.offsetNotificatios == 1) {
                      _paginationPosition = 0;
                    }
                    if (initState.notificatios.list.isNotEmpty) {
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: _scrollController,
                        itemCount: initState.notificatios.list.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              context.navigateTo(
                                NotificationInfoDescriptionRoute(
                                  info: initState.notificatios.list[index],
                                ),
                              );
                            },
                            child: NotificationItemTabInfo(
                              item: initState.notificatios.list[index],
                            ),
                          );
                        },
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
