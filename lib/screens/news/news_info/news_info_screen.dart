import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/ui/widgets/base_bloc_listener.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/screen_wrapper.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:blind_chicken/old_repos/models/src/news/news_info_item_data_model.dart';
import 'package:blind_chicken/old_repos/ui_kit/src/constants/colors/blind_chicken_colors.dart';
import 'package:blind_chicken/old_repos/ui_kit/src/widgets/app_bar_blind_chicken.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/news_info/bloc/news_info_bloc.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_item_tab_info.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_tab_info.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notifications_tab_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

TabController? _tabController;
final ScrollController _scrollController = ScrollController();

@RoutePage()
class NewsInfoRepairedScreen extends StatefulWidget implements AutoRouteWrapper {
  const NewsInfoRepairedScreen({
    super.key,
    this.indexPage,
    this.idNews,
    this.typeNews,
  });

  final int? indexPage;
  final String? idNews;
  final String? typeNews;

  @override
  Widget wrappedRoute(context) => BlocProvider(
        create: (context) => NewsInfoBloc(
          Locator.injection(),
        ),
        child: this,
      );

  @override
  State<NewsInfoRepairedScreen> createState() => _NewsInfoRepairedScreenState();
}

class _NewsInfoRepairedScreenState extends State<NewsInfoRepairedScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: 2, vsync: this);
    _tabController?.animateTo(widget.indexPage ?? 0);

    AppMetrica.reportEvent('Страница новостей');

    return BaseBlocListener<NewsInfoBloc, NewsInfoState>(
      child: BlocBuilder<NewsInfoBloc, NewsInfoState>(
        builder: (context, state) {
          return ScreenWrapper(
            child: Column(
              children: [
                Expanded(
                  child: NestedScrollView(
                    floatHeaderSlivers: true,
                    controller: _scrollController,
                    headerSliverBuilder: _buildHeaderSliver,
                    body: _buildTabBarView(context),
                  ),
                ),
                Container(),
              ],
            ),
          );
        },
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
    return TabBar(
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      indicatorSize: TabBarIndicatorSize.label,
      dividerColor: BlindChickenColors.borderBottomColor,
      controller: _tabController,
      onTap: (int? index) {
        //todo
        AppMetrica.reportEvent(_getAppMetricaEvent(index ?? 0));
      },
      tabs: [
        //todo
        //_buildTab(context, 'Новости', 0, (state) => state.countBadgesNews),
        _buildTab(context, 'Новости', 0),
        //_buildTab(context, 'Уведомления', 1, (state) => state.countBadgesNotificatios),
        _buildTab(context, 'Уведомления', 1),
      ],
    );
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

  Widget _buildTab(BuildContext context, String title, int index, {int? badgeCount}) {
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

          //todo
          //BlocBuilder<NewsBloc, NewsState>(
          //  builder: (context, state) {
          //    return _countBadges(badgeCounter(state), context);
          //  },
          //)
        ],
      ),
    );
  }

  Widget _buildTabBarView(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        listNews(),
        NewsTabInfo(
          goBack: () {
            //context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
          },
          onJump: () => _scrollController.jumpTo(0.0),
        ),
        NotificationsTabInfo(
          goBack: () {
            //context.read<NewsBloc>().add(const NewsEvent.goBackNewsInfo());
          },
          idNews: widget.idNews,
          onJump: () => _scrollController.jumpTo(0.0),
        ),
      ],
    );
  }

  Widget listNews() {
    return BlocBuilder<NewsInfoBloc, NewsInfoState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: BlindChickenColors.borderBottomColor,
            image: DecorationImage(
              image: AssetImage(Assets.images.newsBackground.path),
              fit: BoxFit.cover,
            ),
          ),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              // Здесь можно добавить логику для загрузки дополнительных данных при прокрутке
              return true;
            },
            child: ListView.builder(
              itemCount: state.listNews.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: index == 0 ? 46 : 0,
                    ),
                    NewsItemTabInfo(
                      item: state.listNews[index],
                      onTap: () {
                        context.navigateTo(
                          NewsInfoDescriptionRoute(
                            info: state.listNews[index],
                          ),
                        );
                      },
                      onGoTap: () {
                        navigateToCorrectPage(context, state.listNews[index]);
                      },
                    ),
                    //if (_isLoading && index == initState.news.list.length - 1)
                    //  Container(
                    //    height: 40,
                    //    width: 40,
                    //    padding: EdgeInsets.all(8),
                    //    child: CircularProgressIndicator(
                    //      strokeWidth: 3,
                    //    ),
                    //  ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

void navigateToCorrectPage(BuildContext context, NewsInfoItemDataModel item) {
  final AppRouter router = Locator.injection();
  if (item.typePath == 'catalog') {
    AppMetrica.reportEvent('Переход в каталог из списка новостей по кнопке');
    router.push(
      HomeAutoRouterRoute(
        children: [
          CatalogRoute(
            title: '',
            url: item.path,
            lastPath: 'news',
          ),
        ],
      ),
    );
  } else if (item.typePath == 'product') {
    AppMetrica.reportEvent('Переход в описание товара из списка новостей по кнопке');
    router.push(
      HomeAutoRouterRoute(
        children: [
          CardInfoRoute(
            isLike: false,
            listItems: const [],
            favouritesProducts: const [],
            isChildRoute: false,
            lastPath: 'news',
            titleScreen: 'Экран новостей',
            codeProduct: '',

          ),
        ],
      ),
    );
  } else if (item.typePath == 'boutique') {
    AppMetrica.reportEvent('Переход в описание бутика из списка новостей по кнопке');
    router.push(
      HomeAutoRouterRoute(
        children: [
          BoutiquesDescriptionRoute(
            lastPath: 'news',
          ),
        ],
      ),
    );
  } else if (item.typePath == 'gift_card') {
    AppMetrica.reportEvent('Переход на страницу подарочной карты из списка новостей по кнопке');
    router.push(
      HomeAutoRouterRoute(
        children: [
          GiftCardRoute(
            lastPath: 'news',
          ),
        ],
      ),
    );
  }
}
