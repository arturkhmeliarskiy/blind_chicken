import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/core_config/data/repositories/remote/remote_repository.dart';
import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/ui/widgets/base_bloc_listener.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/buttons/gesture_wrapper.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/loaders/circular_holder.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/screen_wrapper.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:blind_chicken/old_repos/models/src/news/news_info_item_data_model.dart';
import 'package:blind_chicken/old_repos/ui_kit/reaction_button/flutter_reaction_button.dart';
import 'package:blind_chicken/old_repos/ui_kit/src/constants/colors/blind_chicken_colors.dart';
import 'package:blind_chicken/old_repos/ui_kit/src/widgets/app_bar_blind_chicken.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/news_info/bloc/news_info_bloc.dart';
import 'package:blind_chicken/screens/news/widgets/news/news_item_tab_info.dart';
import 'package:blind_chicken/screens/news/widgets/notifications/notification_item_tab_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    if (_tabController != null && _tabController!.length > 0) {
      _tabController?.animateTo(widget.indexPage ?? 0);
    }

    AppMetrica.reportEvent('Страница новостей');

    return BaseBlocListener<NewsInfoBloc, NewsInfoState>(
      listener: (context, state, action) async {
        if (action is TabPressed) {
          String text = '';
          switch (action.tabIndex) {
            case 0:
              text = 'Переход на страницу новостей из верхней панели навигации';
              break;
            case 1:
              text = 'Переход на страницу уведомлений из верхней панели навигации';
              break;
            case 2:
              text = 'Переход на страницу медиа из верхней панели навигации';
              break;
            default:
              text = '';
          }
          if (action.tabIndex == _tabController?.index) {
            _scrollController.animateTo(0.0, duration: Duration(milliseconds: 300), curve: Curves.ease);
          } else {
            AppMetrica.reportEvent(text);
          }
        }
      },
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
        TypeContent selectedTypeContent = TypeContent.news;
        if (index != null) {
          if (index == 1) selectedTypeContent = TypeContent.notice;
        }
        context.sendEvent<NewsInfoBloc>(NewsInfoEvent.switchTab(selectedTypeContent));
        _scrollController.jumpTo(0);
      },
      tabs: [
        _buildTab(context, 'Новости', 0),
        _buildTab(context, 'Уведомления', 1),
      ],
    );
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
        listNotifications(),
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
          child: listBuilderNews(state),
        );
      },
    );
  }

  Widget listBuilderNews(NewsInfoState state) {
    if (state.isLoading) return CircularHolder();
    if (state.listNews.isEmpty) return Container();
    return ListView.builder(
      itemCount: state.listNews.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        if (state.listNews[index].isViewed == false) {
          context.sendEvent<NewsInfoBloc>(NewsInfoEvent.itemWasRead(state.listNews[index]));
        }
        if (state.listNews.length - 1 - 4 == index) {
          context.sendEvent<NewsInfoBloc>(NewsInfoEvent.loadMore());
        }
        return Column(
          children: [
            SizedBox(
              height: index == 0 ? 46 : 0,
            ),
            NewsItemTabInfo(
              item: state.listNews[index],
              onTap: () {
                //context.navigateTo(
                //  NewsInfoDescriptionRoute(
                //    info: state.listNews[index],
                //  ),
                //);
              },
              onGoTap: () {
                navigateToCorrectPage(context, state.listNews[index]);
              },
              emotionWidget: Row(
                children: [
                  buildEmotionButtons(state.listNews[index]),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget listNotifications() {
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
          child: listBuilderNotifications(state),
        );
      },
    );
  }

  Widget listBuilderNotifications(NewsInfoState state) {
    if (state.isLoading) return CircularHolder();
    if (state.listNews.isEmpty) return Container();
    return ListView.builder(
      itemCount: state.listNotifications.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: index == 0 ? 46 : 0,
            ),
            GestureWrapper(
              onTap: () {
                context.sendEvent<NewsInfoBloc>(NewsInfoEvent.pressedOnNotification(state.listNotifications[index]));
              },
              child: NotificationItemTabInfo(
                item: state.listNotifications[index],
              ),
            ),
          ],
        );
      },
    );
  }
}

Widget buildEmotionButtons(NewsInfoItemDataModel listNew) {
  if (int.parse(listNew.id) % 2 == 0) {
    return Row(
      children: [
        SizedBox(width: 16),
        buildEmotionItem(),
      ],
    );
  } else {
    return Row(
      children: [
        SizedBox(width: 16),
        for (var i = 0; i < 5; i++) buildEmotionItem(),
      ],
    );
  }
}

Row buildEmotionItem() {
  double size = 30;
  double additionalWidth = 0;
  return Row(
    children: [
      ReactionButton<String>(
        additionalWidth: additionalWidth,
        itemSize: Size(size, size),
        onReactionChanged: (Reaction<String>? reaction) {
          debugPrint('Selected value: ${reaction?.value}');
        },
        placeholder: Reaction<String>(
          value: 'add_smile',
          icon: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                Assets.icons.reaction.smilePlusSvgrepoCom,
                height: size,
                width: size,
              ),
              Text('123'),
            ],
          ),
        ),
        reactions: <Reaction<String>>[
          Reaction<String>(
            value: 'like',
            icon: SvgPicture.asset(
              Assets.icons.reaction.heartRedSvgrepoCom,
              height: size,
              width: size,
            ),
          ),
          Reaction<String>(
            value: 'fire',
            icon: SvgPicture.asset(
              Assets.icons.reaction.fireSvgrepoCom,
              height: size,
              width: size,
            ),
          ),
          Reaction<String>(
            value: 'fanny',
            icon: SvgPicture.asset(
              Assets.icons.reaction.grinningFaceWithSmilingEyesSvgrepoCom,
              height: size,
              width: size,
            ),
          ),
          Reaction<String>(
            value: 'dislike',
            icon: SvgPicture.asset(
              Assets.icons.reaction.dislikeSvgrepoCom,
              height: size,
              width: size,
            ),
          ),
          Reaction<String>(
            value: 'thinking',
            icon: SvgPicture.asset(
              Assets.icons.reaction.thinkingFaceSvgrepoCom,
              height: size,
              width: size,
            ),
          ),
        ],
        //selectedReaction: Reaction<String>(
        //  value: 'add_smile',
        //  icon: SvgPicture.asset(Assets.icons.reaction.smilePlusSvgrepoCom, height: 40, width: 40),
        //),
        //child: Icon(Icons.link),
      ),
    ],
  );
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
