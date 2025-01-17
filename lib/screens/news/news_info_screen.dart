import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/screen_wrapper.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_tab_info.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notifications_tab_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  TabController? _tabController;
  String _iDNews = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeTabController();
    _fetchInitialNewsData();
    AppMetrica.reportEvent('Страница новостей');
  }

  void _initializeTabController() {
    _tabController = TabController(length: 2, vsync: this);
    if (widget.indexPage != 0) {
      _tabController?.animateTo(widget.indexPage);
    }
  }

  void _fetchInitialNewsData() {
    if (widget.indexPage == 0 && widget.idNews != null) {
      context.read<NewsBloc>().add(
            NewsEvent.updateReadNews(id: widget.idNews!, typeNews: widget.typeNews ?? ''),
          );
    }
  }

  @override
  void didUpdateWidget(covariant NewsInfoScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _checkAndFetchNewsData();
    AppMetrica.reportEvent('Страница новостей');
  }

  void _checkAndFetchNewsData() {
    if (widget.idNews != null && widget.idNews != _iDNews) {
      _iDNews = widget.idNews!;
      context.read<NewsBloc>().add(
            NewsEvent.updateReadNews(id: widget.idNews!, typeNews: widget.typeNews ?? ''),
          );
      _tabController?.animateTo(widget.indexPage);
    }
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      onWillPop: () async => false,
      child: Column(
        children: [
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                floatHeaderSlivers: true,
                controller: _scrollController,
                headerSliverBuilder: _buildHeaderSliver,
                body: _buildTabBarView(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildHeaderSliver(BuildContext context, bool innerBoxIsScrolled) {
    return [
      SliverOverlapAbsorber(
        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        sliver: SliverAppBar(
          forceElevated: innerBoxIsScrolled,
          pinned: true,
          floating: true,
          toolbarHeight: kToolbarHeight * 1.65,
          title: const AppBarBlindChicken(),
          titleSpacing: 0,
          foregroundColor: BlindChickenColors.backgroundColor,
          backgroundColor: BlindChickenColors.backgroundColor,
          surfaceTintColor: BlindChickenColors.backgroundColor,
          bottom: _buildTabBar(context),
        ),
      ),
    ];
  }

  TabBar _buildTabBar(BuildContext context) {
    return TabBar.secondary(
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      indicatorSize: TabBarIndicatorSize.label,
      dividerColor: BlindChickenColors.borderBottomColor,
      controller: _tabController,
      onTap: _onTabTapped,
      tabs: [
        //todo
        //_buildTab(context, 'Новости', 0, (state) => state.countBadgesNews),
        _buildTab(context, 'Новости', 0, (state) => 0),
        //_buildTab(context, 'Уведомления', 1, (state) => state.countBadgesNotificatios),
        _buildTab(context, 'Уведомления', 1, (state) => 0),
      ],
    );
  }

  Widget _buildTab(BuildContext context, String title, int index, int Function(NewsState) badgeCounter) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: _tabController?.index == index ? FontWeight.w700 : null,
                ),
          ),
          BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              return _countBadges(badgeCounter(state), context);
            },
          )
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    final newsBloc = context.read<NewsBloc>();
    final event = index == 0
        ? NewsEvent.getNews(isGoBack: false)
        : (index == 1 ? const NewsEvent.getNotifications() : const NewsEvent.getMedia());
    newsBloc.add(event);
    AppMetrica.reportEvent(_getAppMetricaEvent(index));
  }

  String _getAppMetricaEvent(int index) {
    switch (index) {
      case 0:
        return 'Переход на страницу новостей из верхней панели навигации';
      case 1:
        return 'Переход на страницу уведомлений из верхней панели навигации';
      case 2:
        return 'Переход на страницу медиа из верхней панели навигации';
      default:
        return '';
    }
  }

  Widget _buildTabBarView(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        NewsTabInfo(
          goBack: () => context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo()),
          onJump: () => _scrollController.jumpTo(0.0),
        ),
        NotificationsTabInfo(
          goBack: () => context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo()),
          idNews: widget.idNews,
          onJump: () => _scrollController.jumpTo(0.0),
        ),
      ],
    );
  }
}

Widget _countBadges(int count, BuildContext context) {
  if (count <= 0) return SizedBox();

  return Row(
    children: [
      SizedBox(width: 5),
      SizedBox(
        height: 16,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.black,
            ),
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            alignment: Alignment.center,
            child: Text(
              count > 10 ? '10+' : count.toString(),
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
  );
}
