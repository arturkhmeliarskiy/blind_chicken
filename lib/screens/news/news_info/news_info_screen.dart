import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/core_config/data/repositories/remote/remote_repository.dart';
import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/modals/info_modal.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/widgets/base_bloc_listener.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/buttons/gesture_wrapper.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/loaders/circular_holder.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/screen_wrapper.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:blind_chicken/old_repos/shared/src/constants/date_info.dart';
import 'package:blind_chicken/old_repos/ui_kit/src/constants/colors/blind_chicken_colors.dart';
import 'package:blind_chicken/old_repos/ui_kit/src/widgets/app_bar_blind_chicken.dart';
import 'package:blind_chicken/screens/news/news_info/bloc/news_info_bloc.dart';
import 'package:blind_chicken/screens/news/news_info/models/news_model.dart';
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
          Locator.injection(),
        ),
        child: this,
      );

  @override
  State<NewsInfoRepairedScreen> createState() => _NewsInfoRepairedScreenState();
}

class _NewsInfoRepairedScreenState extends State<NewsInfoRepairedScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.offset > 10) {
      context.sendEvent<NewsInfoBloc>(NewsInfoEvent.hideArrow(_scrollController.position.pixels));
    } else {
      context.sendEvent<NewsInfoBloc>(NewsInfoEvent.onScrollUp(_scrollController.position.pixels));
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

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
        if (action is LogInToLike) {
          showInfoModal(
            context: context,
            title: 'Внимание',
            description: 'Авторизуйтесь чтобы лайкнуть новость',
            buttonText: 'Понятно',
          );
        }
      },
      child: BlocBuilder<NewsInfoBloc, NewsInfoState>(
        builder: (context, state) {
          return ScreenWrapper(
            floatingButtonLocation: FloatingActionButtonLocation.startFloat,
            floatingButton: buildArrowUp(),
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

  Widget buildArrowUp() {
    return BlocBuilder<NewsInfoBloc, NewsInfoState>(
      builder: (context, state) {
        if (!state.isArrowVisible) {
          return SizedBox.shrink();
        }
        return GestureDetector(
          onTap: () async {
            await _scrollController.animateTo(
              0,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
            if (context.mounted) {
              context.sendEvent<NewsInfoBloc>(NewsInfoEvent.hideArrow(_scrollController.position.pixels));
            }
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.darkText,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Icon(
              Icons.arrow_upward_rounded,
              color: AppColors.white,
            ),
          ),
        );
      },
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

  Widget _buildTab(BuildContext context, String title, int index) {
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
          BlocBuilder<NewsInfoBloc, NewsInfoState>(
            builder: (context, state) {
              if (index == 0) return _countBadges(state.unreadModel?.news ?? 0, context);
              if (index == 1) return _countBadges(state.unreadModel?.notice ?? 0, context);
              return SizedBox();
            },
          )
        ],
      ),
    );
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

  Widget _buildTabBarView(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      //physics: const NeverScrollableScrollPhysics(),
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
        if (state.listNews.length - 5 == index) {
          context.sendEvent<NewsInfoBloc>(NewsInfoEvent.loadMore());
        }
        if (state.listNews[index].id == '223') {
          logging(state.listNews[index].images.toString(), stackTrace: StackTrace.current);
          logging(state.listNews[index].videos.toString(), stackTrace: StackTrace.current);
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
                //navigateToCorrectPage(context, state.listNews[index]);
              },
              emotionWidget: Row(
                children: [
                  buildEmotionButtons(state.listNews[index], index),
                  SizedBox(width: 8),
                  if (state.listNews[index].countLike > 0)
                    Text(
                      state.listNews[index].countLike.toString(),
                      style: TextStyle(
                        color: state.listNews[index].currentUserLikedIt == true
                            ? AppColors.accentRed.withOpacity(0.6)
                            : null,
                        fontSize: 14,
                      ),
                    ),
                ],
              ),
              readWidget: buildReadChecker(context, index),
            ),
          ],
        );
      },
    );
  }

  Widget buildReadChecker(BuildContext context, int index) {
    return BlocBuilder<NewsInfoBloc, NewsInfoState>(
      buildWhen: (previous, current) => previous.listNews[index].isViewed != current.listNews[index].isViewed,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateInfo.dateFormat(state.listNews[index].createAt.toIso8601String()),
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: BlindChickenColors.textInput,
                      fontSize: 14,
                    ),
              ),
              //if (state.listNews[index].isViewed == false)
              //  Text(
              //    ' Не прочитано',
              //    style: Theme.of(context).textTheme.displaySmall?.copyWith(
              //          color: BlindChickenColors.textInput,
              //        ),
              //  )
              //else
              //  SizedBox(),
            ],
          ),
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

Widget buildEmotionButtons(NewsElement item, int index) {
  return Row(
    children: [
      SizedBox(width: 16),
      buildEmotionItem(item, index),
    ],
  );
}

Widget buildEmotionItem(NewsElement item, int index) {
  double size = 24;
  return BlocBuilder<NewsInfoBloc, NewsInfoState>(
    buildWhen: (previous, current) =>
        previous.listNews[index].currentUserLikedIt != current.listNews[index].currentUserLikedIt,
    builder: (context, state) {
      return GestureWrapper(
        onTap: () {
          context.sendEvent<NewsInfoBloc>(NewsInfoEvent.likeSelected(item, !item.currentUserLikedIt));
        },
        child: Row(
          children: [
            item.currentUserLikedIt == true
                ? SvgPicture.asset(
                    Assets.icons.reaction.heartDecorationSvgrepoCom,
                    height: size,
                    width: size,
                  )
                : SvgPicture.asset(
                    Assets.icons.reaction.heartSvgrepoCom,
                    height: size,
                    width: size,
                  ),
          ],
        ),
      );
    },
  );
}
