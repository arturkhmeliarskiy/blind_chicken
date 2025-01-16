import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/resources/app_text_styles.dart';
import 'package:blind_chicken/core_config/utils/list_extensions.dart';
import 'package:flutter/material.dart';

final leftPadding = [0.0, 11.0].byPlatform;

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    required this.controller,
    required this.items,
    this.isScrollable = true,
    this.visibleTabsQuantity = 3,
    this.useTabsEqualWidth = false,
    this.onTap,
    this.padding = const EdgeInsets.only(top: 16.0, bottom: 10.0),
    this.restrictedTabs = const [],
    super.key,
  });

  final TabController controller;
  final List<String> items;
  final bool isScrollable;
  final double visibleTabsQuantity;
  final bool useTabsEqualWidth;
  final ValueChanged<int>? onTap;
  final List<int> restrictedTabs;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final tabWidth = (mediaWidth / visibleTabsQuantity) - leftPadding - [32.0, 8.0].byPlatform;

    if (items.isEmpty) {
      return const Expanded(child: SizedBox());
    }

    if (isMaterial) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.greyEA,
              ),
            ),
          ),
          child: SizedBox(
            width: mediaWidth,
            child: TabBar(
              tabAlignment: TabAlignment.start,
              controller: controller,
              indicatorColor: AppColors.primary,
              isScrollable: isScrollable,
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.black,
              labelStyle: AppTextStyles.tabItemTitleActive,
              unselectedLabelStyle: AppTextStyles.tabItemTitleInactive,
              onTap: onTap,
              tabs: List.generate(
                items.length,
                (index) {
                  // final tab = Tab(
                  //   text: items[index].byPlatform,
                  // );
                  final tab = Container(
                    alignment: Alignment.center,
                    height: 46,
                    child: Text(
                      items[index].toUpperCase(),
                      style: controller.index == index
                          ? AppTextStyles.tabItemTitleActive
                          : restrictedTabs.contains(index)
                              ? AppTextStyles.inActiveTabText
                              : AppTextStyles.tabItemTitleInactive,
                      textAlign: TextAlign.center,
                    ),
                  );
                  return useTabsEqualWidth
                      ? SizedBox(
                          width: tabWidth,
                          child: tab,
                        )
                      : tab;
                },
              ),
            ),
          ),
        ),
      );
    }
    return Padding(
      padding: padding,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TabBar(
          dividerColor: Colors.white.withOpacity(0),
          tabAlignment: TabAlignment.start,
          controller: controller,
          indicatorColor: AppColors.white,
          isScrollable: isScrollable,
          labelPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          onTap: onTap,
          tabs: List.generate(
            items.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? [leftPadding, useTabsEqualWidth ? leftPadding + 1 : leftPadding].byPlatform : 0,
                right: index + 1 == items.length ? leftPadding : 0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: controller.index == index
                      ? AppColors.primary
                      : restrictedTabs.contains(index)
                          ? AppColors.white
                          : AppColors.greyEA,
                  borderRadius: BorderRadius.circular(8),
                  border: restrictedTabs.contains(index) ? Border.all(color: AppColors.greyEA) : null,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 16,
                ),
                width: useTabsEqualWidth ? tabWidth : null,
                child: Text(
                  items[index],
                  style: controller.index == index
                      ? AppTextStyles.chipPrimaryTitleActive
                      : restrictedTabs.contains(index)
                          ? AppTextStyles.inActiveTabText
                          : AppTextStyles.chipPrimaryTitleInactive,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
