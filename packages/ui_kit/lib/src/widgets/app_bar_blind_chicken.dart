import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/src/widgets/blind_chicken_top_banner.dart';
import 'package:ui_kit/ui_kit.dart';

class AppBarBlindChicken extends StatefulWidget {
  const AppBarBlindChicken({super.key, this.onBack});

  final VoidCallback? onBack;

  @override
  State<AppBarBlindChicken> createState() => _AppBarBlindChickenState();
}

class _AppBarBlindChickenState extends State<AppBarBlindChicken> {
  final listItems = [
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

  final listItemsChat = [
    DropDownDataModel(
      title: '8 (800) 500-53-29',
      route: 'phone',
    ),
    // DropDownDataModel(
    //   title: 'Открыть чат',
    //   route: '/chat_messanger',
    // ),
    DropDownDataModel(
      title: 'WhatsApp',
      route: 'WhatsApp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BlindChickenTopBanner(),
        AppBar(
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
          title: GestureDetector(
            onTap: () {
              final onBack = widget.onBack;
              if (onBack != null) {
                onBack();
              } else {
                context.read<BrandBloc>().add(const BrandEvent.getBrands(selectTypePeople: 0));
                context.navigateNamedTo('/dashboard/home/main');
              }
            },
            child: SvgPicture.asset(
              'assets/images/lgm.svg',
              width: 92,
              height: 35,
            ),
          ),
          titleSpacing: 10.5,
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
            // GestureDetector(
            //   onTap: () {
            //     showDialog<void>(
            //       context: context,
            //       barrierColor: Colors.transparent,
            //       builder: (context) {
            //         return Container(
            //           margin: const EdgeInsets.only(top: 56),
            //           alignment: Alignment.topRight,
            //           child: GestureDetector(
            //             onTap: () {
            //               Navigator.of(context, rootNavigator: true).pop();
            //             },
            //             child: SafeArea(
            //               top: true,
            //               bottom: true,
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.end,
            //                 children: [
            //                   Container(
            //                     height: 94,
            //                     width: 186,
            //                     decoration: BoxDecoration(
            //                       color: Colors.white,
            //                       borderRadius: BorderRadius.circular(
            //                         5,
            //                       ),
            //                       boxShadow: [
            //                         BoxShadow(
            //                           color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
            //                           blurRadius: 3,
            //                           offset: const Offset(0, 3), // Shadow position
            //                         ),
            //                       ],
            //                     ),
            //                     child: Padding(
            //                       padding: const EdgeInsets.only(
            //                         top: 10.5,
            //                         bottom: 10.5,
            //                       ),
            //                       child: Column(
            //                         crossAxisAlignment: CrossAxisAlignment.start,
            //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                         children: List.generate(listItemsChat.length, (index) {
            //                           return GestureDetector(
            //                             onTap: () async {
            //                               Navigator.of(context, rootNavigator: true).pop();
            //                               if (listItemsChat[index].route == 'phone') {
            //                                 await LaunchService.makePhoneCall(
            //                                     listItemsChat[index].title);
            //                               } else if (listItemsChat[index].route == 'WhatsApp') {
            //                                 await LaunchService.launchWhatsapp(context, '79093335046');
            //                               } else {
            //                                 context.navigateNamedTo(listItemsChat[index].route);
            //                               }
            //                             },
            //                             child: Container(
            //                               padding: const EdgeInsets.only(
            //                                 top: 7,
            //                                 bottom: 7,
            //                                 left: 24.5,
            //                                 right: 24.5,
            //                               ),
            //                               color: Colors.transparent,
            //                               alignment: Alignment.centerLeft,
            //                               child: Text(
            //                                 listItemsChat[index].title,
            //                                 style: Theme.of(context).textTheme.displayMedium,
            //                               ),
            //                             ),
            //                           );
            //                         }),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         );
            //       },
            //     );
            //   },
            //   child: Container(
            //     padding: const EdgeInsets.only(
            //       left: 10.5,
            //       right: 10.5,
            //     ),
            //     color: Colors.transparent,
            //     child: SvgPicture.asset(
            //       'assets/icons/message-circle.svg',
            //       height: 21,
            //       width: 21,
            //     ),
            //   ),
            // ),
            GestureDetector(
              onTap: () {
                showDialog<void>(
                  context: context,
                  barrierColor: Colors.transparent,
                  builder: (context) {
                    return BlocBuilder<TopBannerBloc, TopBannerState>(builder: (context, state) {
                      return state.maybeMap(
                        preloadData: (initState) {
                          return Container(
                            margin: EdgeInsets.only(
                              top: initState.info.data.title.isNotEmpty ? 86 : 56,
                            ),
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).pop();
                              },
                              child: SafeArea(
                                top: true,
                                bottom: true,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 134,
                                      width: 176,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: BlindChickenColors.activeBorderTextField
                                                .withOpacity(0.1),
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
                                                Navigator.of(context, rootNavigator: true).pop();
                                                context.navigateNamedTo(
                                                    '/dashboard/home${listItems[index].route}');
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
                        },
                        orElse: () => const SizedBox(),
                      );
                    });
                  },
                );
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
        ),
      ],
    );
  }
}
