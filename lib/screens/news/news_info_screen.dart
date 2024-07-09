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
  });

  final int indexPage;

  @override
  State<NewsInfoScreen> createState() => _NewsInfoScreenState();
}

class _NewsInfoScreenState extends State<NewsInfoScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  bool _isSwipe = true;
  // int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant NewsInfoScreen oldWidget) {
    // if (_selectedIndex != 0) {
    //   _tabController.animateTo(widget.indexPage);
    // }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.velocity.pixelsPerSecond.dx > 0) {
          context.back();
          setState(() {
            _isSwipe = false;
          });
        }
      },
      child: PopScope(
        canPop: false,
        onPopInvoked: (value) {
          if (_isSwipe && !value) {
            context.back();
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
                                  fontWeight: _tabController.index == 0 ? FontWeight.w700 : null,
                                ),
                          ),
                          // Container(
                          //   height: 18,
                          //   width: 10,
                          //   alignment: Alignment.topCenter,
                          //   child: Container(
                          //     height: 5,
                          //     width: 5,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: BlindChickenColors.activeBorderTextField,
                          //     ),
                          //   ),
                          // ),
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
                                  fontWeight: _tabController.index == 1 ? FontWeight.w700 : null,
                                  fontSize: _tabController.index == 1 ? 13.8 : null,
                                ),
                          ),
                          // Container(
                          //   height: 18,
                          //   width: 10,
                          //   alignment: Alignment.topCenter,
                          //   child: Container(
                          //     height: 5,
                          //     width: 5,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: BlindChickenColors.activeBorderTextField,
                          //     ),
                          //   ),
                          // ),
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
                                  fontWeight: _tabController.index == 2 ? FontWeight.w700 : null,
                                ),
                          ),
                          // Container(
                          //   height: 18,
                          //   width: 10,
                          //   alignment: Alignment.topCenter,
                          //   child: Container(
                          //     height: 5,
                          //     width: 5,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       color: BlindChickenColors.activeBorderTextField,
                          //     ),
                          //   ),
                          // ),
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
                    children: const <Widget>[
                      NewsTabInfo(),
                      MediaTabInfo(),
                      NotificationsTabInfo(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
