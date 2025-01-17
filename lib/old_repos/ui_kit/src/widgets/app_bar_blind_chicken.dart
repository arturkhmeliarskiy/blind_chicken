import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';

class AppBarBlindChicken extends StatefulWidget {
  const AppBarBlindChicken({
    super.key,
    this.onBack,
    this.isTopBanner = true,
  });

  final VoidCallback? onBack;
  final bool isTopBanner;

  @override
  State<AppBarBlindChicken> createState() => _AppBarBlindChickenState();
}

class _AppBarBlindChickenState extends State<AppBarBlindChicken> {
  final List<DropDownDataModel> listItems = [
    DropDownDataModel(
      title: 'Контакты',
      route: '/contacts',
    ),
    DropDownDataModel(
      title: 'Информация',
      route: '/info',
    ),
    DropDownDataModel(
      title: 'Кэшбэк и скидки',
      route: '/cashback_and_discounts',
    ),
  ];

  final List<DropDownDataModel> listItemsChat = [
    DropDownDataModel(
      title: '8 (800) 500-53-29',
      route: 'phone',
    ),
    DropDownDataModel(
      title: 'WhatsApp',
      route: 'WhatsApp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.isTopBanner) const BlindChickenTopBanner(),
        _buildAppBar(context),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: BlindChickenColors.backgroundColor,
      surfaceTintColor: BlindChickenColors.backgroundColor,
      elevation: 0,
      leadingWidth: 0,
      automaticallyImplyLeading: false,
      shape: const Border(
        bottom: BorderSide(
          color: BlindChickenColors.borderBottomColor,
          width: 1,
        ),
      ),
      title: GestureDetector(
        onTap: _handleTitleTap,
        child: SvgPicture.asset(
          'assets/images/lgm.svg',
          width: 92,
          height: 35,
        ),
      ),
      titleSpacing: 10.5,
      actions: [
        _buildAction(context, '/dashboard/home/boutiques', 'assets/icons/point_locate.svg'),
        _buildAction(context, '/search', 'assets/icons/search.svg'),
        _buildMessageAction(context),
        _buildMenuAction(context),
      ],
    );
  }

  void _handleTitleTap() {
    final onBack = widget.onBack;
    if (onBack != null) {
      onBack();
    } else {
      _updateDataAndNavigate();
    }
  }

  void _updateDataAndNavigate() {
    context.read<BrandBloc>().add(const BrandEvent.getBrands(selectTypePeople: 0));
    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
    final sharedService = GetIt.I.get<SharedPreferencesService>();
    if (sharedService.getString(key: SharedPrefKeys.lastScreen) == 'catalog_card_info') {
      context.back();
      sharedService.remove(SharedPrefKeys.lastScreen);
    }
    context.navigateNamedTo('/dashboard/home/main');
  }

  Widget _buildAction(BuildContext context, String route, String assetName) {
    return GestureDetector(
      onTap: () {
        context.navigateNamedTo(route);
        _pauseVideo();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.5),
        color: Colors.transparent,
        child: SvgPicture.asset(
          assetName,
          height: 21,
          width: 21,
        ),
      ),
    );
  }

  void _pauseVideo() {
    final updateData = GetIt.I.get<UpdateDataService>();
    if (updateData.videoController.value.isInitialized && updateData.videoController.value.duration != Duration.zero) {
      updateData.videoController.pause();
    }
  }

  Widget _buildMessageAction(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDropDownDialog(context, listItemsChat),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.5),
        color: Colors.transparent,
        child: SvgPicture.asset(
          'assets/icons/message-circle.svg',
          height: 21,
          width: 21,
        ),
      ),
    );
  }

  Widget _buildMenuAction(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDropDownDialog(context, listItems),
      child: Container(
        width: 30,
        height: 30,
        margin: const EdgeInsets.only(right: 10.5),
        padding: const EdgeInsets.all(4),
        color: Colors.transparent,
        child: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: 21,
          width: 21,
        ),
      ),
    );
  }

  void _showDropDownDialog(BuildContext context, List<DropDownDataModel> items) {
    showDialog<void>(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) {
        return BlocBuilder<TopBannerBloc, TopBannerState>(
          builder: (context, state) {
            return state.maybeMap(
              preloadData: (initState) =>
                  _buildDropDownMenu(context, items, initState.info.data.title.isNotEmpty ? 86 : 56),
              orElse: () => const SizedBox(),
            );
          },
        );
      },
    );
  }

  Widget _buildDropDownMenu(BuildContext context, List<DropDownDataModel> items, double topMargin) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () => Navigator.of(context, rootNavigator: true).pop(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: items.length == listItems.length ? 134 : 94,
                width: 186,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(items.length, (index) {
                      final item = items[index];
                      return GestureDetector(
                        onTap: () => _handleDropDownItemTap(context, item),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 24.5),
                          color: Colors.transparent,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.title,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleDropDownItemTap(BuildContext context, DropDownDataModel item) async {
    Navigator.of(context, rootNavigator: true).pop();
    if (item.route == 'phone') {
      await LaunchService.makePhoneCall(item.title);
    } else if (item.route == 'WhatsApp') {
      await LaunchService.launchWhatsapp(context, '79093335046');
    } else {
      context.navigateNamedTo('/dashboard/home${item.route}');
      if (item.route == '/contacts') {
        AppMetrica.reportEvent('Контакты');
      }
    }
  }
}
