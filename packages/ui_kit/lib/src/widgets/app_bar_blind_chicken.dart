import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class AppBarBlindChicken extends StatefulWidget {
  const AppBarBlindChicken({super.key});

  @override
  State<AppBarBlindChicken> createState() => _AppBarBlindChickenState();
}

class _AppBarBlindChickenState extends State<AppBarBlindChicken> {
  bool isOpen = false;
  OverlayEntry? overlayEntry;

  void showOverlay({
    required BuildContext context,
    required List<DropDownDataModel> listItems,
    double height = 0.0,
    double width = 0.0,
    double? right,
    double? left,
    double? top,
    double? bottom,
  }) async {
    OverlayState overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
        right: right,
        left: left,
        top: top,
        bottom: bottom,
        child: SafeArea(
          top: true,
          bottom: true,
          child: GestureDetector(
            onTap: () {
              overlayEntry?.remove();
            },
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                    blurRadius: 3,
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.5,
                  bottom: 10.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(listItems.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        context.navigateNamedTo('/dashboard/home${listItems[index].route}');
                        overlayEntry?.remove();
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 7,
                          bottom: 7,
                          left: 24.5,
                          right: 24.5,
                        ),
                        color: Colors.transparent,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          listItems[index].title,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      );
    });

    // Inserting the OverlayEntry into the Overlay

    overlayState.insert(overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BlindChickenColors.backgroundColor,
      elevation: 0,
      leadingWidth: 0,
      automaticallyImplyLeading: false,
      shape: const Border(
        bottom: BorderSide(
          color: BlindChickenColors.borderBottomColor,
          width: 1,
        ),
      ),
      title: SvgPicture.asset(
        'assets/images/logo.svg',
        width: 92,
        height: 35,
      ),
      actions: [
        GestureDetector(
          onTap: () {
            context.navigateNamedTo('/dashboard/home/boutiques');
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 10.5,
              right: 10.5,
            ),
            color: Colors.transparent,
            child: SvgPicture.asset(
              'assets/icons/point_locate.svg',
              height: 21,
              width: 21,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            context.navigateNamedTo('/search');
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 10.5,
              right: 10.5,
            ),
            color: Colors.transparent,
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 21,
              width: 21,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
            if (isOpen) {
              showOverlay(
                context: context,
                height: 134,
                width: 176,
                top: 55,
                right: 0,
                listItems: [
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
                ],
              );
            } else {
              overlayEntry?.remove();
            }
          },
          child: Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.only(
              right: 10.5,
            ),
            padding: const EdgeInsets.all(4),
            color: Colors.transparent,
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
              height: 21,
              width: 21,
            ),
          ),
        ),
      ],
    );
  }
}
