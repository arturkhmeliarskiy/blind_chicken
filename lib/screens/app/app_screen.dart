import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:appmetrica_push_plugin/appmetrica_push_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  ScaffoldMessengerState internetConnect = ScaffoldMessengerState();
  ScaffoldMessengerState noInternetConnect = ScaffoldMessengerState();
  late StreamSubscription<InternetStatus> _connectivitySubscription;
  bool _isOpenShowDialog = false;
  OverlayEntry? overlayEntry;
  String? deviceToken;

  @override
  void initState() {
    init();
    checkForUpdate();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    internetConnect = ScaffoldMessenger.of(context);
    noInternetConnect = ScaffoldMessenger.of(context);
    final InternetConnection connection = InternetConnection.createInstance(
      customCheckOptions: [
        InternetCheckOption(uri: Uri.parse('https://example.com')),
        InternetCheckOption(uri: Uri.parse('https://yandex.com')),
      ],
    );
    _connectivitySubscription = connection.onStatusChange.listen((state) {
      checkInternet(state);
    });
    super.didChangeDependencies();
  }

  checkInternet(InternetStatus state) async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        log('connected');
        if (_isOpenShowDialog) {
          thereAreInternetConnections();
          closeShowDialog();
          _isOpenShowDialog = false;
        }
      }
    } on SocketException catch (_) {
      log('not connected');
      if (!_isOpenShowDialog) {
        noInternetConnection();
        _isOpenShowDialog = true;
      }
    }
  }

  thereAreInternetConnections() {
    internetConnect.showSnackBar(SnackBar(
      backgroundColor: BlindChickenColors.aqua,
      content: Text(
        'Есть интернет соединение',
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: BlindChickenColors.backgroundColor,
            ),
      ),
    ));
  }

  closeShowDialog() {
    Navigator.of(context).pop();
  }

  noInternetConnection() {
    showGeneralDialog(
        context: context,
        useRootNavigator: false,
        barrierDismissible: false,
        barrierColor: Colors.transparent,
        pageBuilder: (context, __, ___) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Container(
                  height: kBottomNavigationBarHeight,
                  alignment: Alignment.centerLeft,
                  color: BlindChickenColors.red,
                  padding: const EdgeInsets.only(left: 14),
                  child: Text(
                    'Отсутствует интернет соединение',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: BlindChickenColors.backgroundColor,
                        ),
                  ),
                )
              ],
            ),
          );
        });
  }

  checkForUpdate() async {
    if (Platform.isAndroid) {
      AppUpdateInfo updateInfo = await InAppUpdate.checkForUpdate();
      if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
        InAppUpdate.startFlexibleUpdate().catchError((e) {
          return AppUpdateResult.inAppUpdateFailed;
        });
      }
    }
  }

  init() async {
    if (Platform.isIOS) {
      await Future<void>.delayed(
        const Duration(
          seconds: 3,
        ),
      );
      final result = await AppMetricaPush.getTokens();
      log("push token: ${result['apns'] ?? ''}");
    }
  }

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
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

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
                      onTap: () async {
                        if (listItems[index].route == 'phone') {
                          await LaunchService.makePhoneCall(listItems[index].title);
                          context.navigateNamedTo('/dashboard/home/${listItems[index].route}');
                        } else if (listItems[index].route == 'WhatsApp') {
                          await LaunchService.launchWhatsapp(context, '79093335046');
                        } else {
                          context.navigateNamedTo(listItems[index].route);
                        }

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
                          style: Theme.of(context).textTheme.displayMedium,
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

  final listItems = [
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
    return AutoTabsScaffold(
      routes: const [
        HomeAutoRouterRoute(),
        LoginRoute(),
        ShoppingCartAutoRouterRoute(),
        FavouritesRoute(),
        NewsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final child = BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/cust_menu_icon.svg',
                  height: 21,
                  fit: BoxFit.cover,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  fit: BoxFit.cover,
                  height: 21,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/shopping-cart.svg',
                  fit: BoxFit.cover,
                  height: 21,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/heart.svg',
                  fit: BoxFit.cover,
                  height: 21,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/bell.svg',
                  fit: BoxFit.cover,
                  height: 21,
                ),
                label: '',
              ),
              // BottomNavigationBarItem(
              //   icon: SvgPicture.asset(
              //     'assets/icons/message-circle.svg',
              //     fit: BoxFit.cover,
              //     height: 21,
              //   ),
              //   label: '',
              // ),
              // BottomNavigationBarItem(
              //   icon: SizedBox(
              //     height: 25,
              //     child: Stack(
              //       alignment: Alignment.topRight,
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.only(top: 4),
              //           child: SvgPicture.asset(
              //             'assets/icons/bell.svg',
              //             fit: BoxFit.cover,
              //             height: 21,
              //           ),
              //         ),
              //         Container(
              //           height: 12,
              //           width: 12,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(5),
              //             color: Colors.white,
              //           ),
              //           padding: const EdgeInsets.all(3),
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(5),
              //               color: Colors.black,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              //   label: '',
              // ),
            ],
            currentIndex: tabsRouter.activeIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green[500],
            onTap: (int index) {
              final updateData = GetIt.I.get<UpdateDataService>();
              if (index == 0) {
                // if (_isMain) {
                //   context.navigateTo(
                //     const HomeAutoRouterRoute(
                //       children: [
                //         MainRoute(),
                //       ],
                //     ),
                //   );
                // } else {
                //   context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
                //   context.navigateTo(
                //     const HomeAutoRouterRoute(
                //       children: [
                //         CategoryRoute(),
                //       ],
                //     ),
                //   );
                // }
                if (mounted) {
                  Timer(const Duration(milliseconds: 250), () {
                    final updateData = GetIt.I.get<UpdateDataService>();

                    context.read<CatalogBloc>().add(
                          CatalogEvent.subCategory(
                            a: 'get-main-menu',
                            b: 0,
                            id: updateData.selectedIndexGender,
                            u: '',
                            pid: 0,
                            selectedGenderIndex: updateData.selectedIndexGender,
                          ),
                        );
                    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                  });
                  context.navigateTo(
                    const DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            CategoryRoute(),
                          ],
                        ),
                      ],
                    ),
                  );
                }
                updateData.lastScreen = 'catalog';
              } else if (index == 1) {
                final shared = GetIt.I.get<SharedPreferencesService>();
                final userAuthorized = shared.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
                if (userAuthorized) {
                  context.read<AccountBloc>().add(const AccountEvent.preloadData());
                  context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                  context.navigateTo(const LoginRoute(
                    children: [
                      AccountRoute(),
                    ],
                  ));
                } else {
                  context.read<LoginBloc>().add(const LoginEvent.init());

                  showDialog(
                      context: context,
                      builder: (context) {
                        return LoginPhoneScreen(
                          successfully: () {
                            Navigator.of(context, rootNavigator: true).pop();
                            context.read<AccountBloc>().add(const AccountEvent.preloadData());
                            context.navigateTo(
                              const LoginRoute(
                                children: [
                                  AccountRoute(),
                                ],
                              ),
                            );
                          },
                          onBack: () {
                            context.popRoute();
                          },
                        );
                      });
                }
                updateData.lastScreen = 'account';
              } else if (index == 2) {
                Timer(const Duration(milliseconds: 150), () {
                  context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.preloadData());
                });
                context.navigateTo(
                  const ShoppingCartAutoRouterRoute(
                    children: [
                      ShoppingCartRoute(),
                    ],
                  ),
                );
                updateData.lastScreen = '';
              } else if (index == 3) {
                if (!updateData.isOpenShowModalBottomSheetFavouritesScreen) {
                  Timer(const Duration(milliseconds: 150), () {
                    context.read<FavouritesBloc>().add(const FavouritesEvent.preloadData());
                    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                  });
                }
                updateData.lastScreen = 'favourites_products';
                context.navigateTo(
                  const FavouritesRoute(children: [
                    FavouritesProductsRoute(),
                  ]),
                );
                AppMetrica.reportEvent('Избранное');
              } else if (index == 4) {
                context.read<NewsBloc>().add(const NewsEvent.getNews());
                context.navigateTo(
                  NewsRoute(children: [
                    NewsInfoRoute(
                      indexPage: 0,
                    ),
                  ]),
                );
                AppMetrica.reportEvent('Список новостей');
                // showDialog(
                //     barrierColor: Colors.transparent,
                //     context: context,
                //     builder: (context) {
                //       return Container(
                //         margin: const EdgeInsets.only(bottom: 56),
                //         alignment: Alignment.bottomRight,
                //         child: GestureDetector(
                //           onTap: () {
                //             Navigator.of(context, rootNavigator: true).pop();
                //           },
                //           child: SafeArea(
                //             top: true,
                //             bottom: true,
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.end,
                //               children: [
                //                 Container(
                //                   height: 94,
                //                   width: 220,
                //                   decoration: BoxDecoration(
                //                     color: Colors.white,
                //                     borderRadius: BorderRadius.circular(
                //                       5,
                //                     ),
                //                     boxShadow: [
                //                       BoxShadow(
                //                         color: BlindChickenColors.activeBorderTextField
                //                             .withOpacity(0.1),
                //                         blurRadius: 3,
                //                         offset: const Offset(0, 3), // Shadow position
                //                       ),
                //                     ],
                //                   ),
                //                   child: Padding(
                //                     padding: const EdgeInsets.only(
                //                       top: 10.5,
                //                       bottom: 10.5,
                //                     ),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                       children: List.generate(listItems.length, (index) {
                //                         return GestureDetector(
                //                           onTap: () async {
                //                             Navigator.of(context, rootNavigator: true).pop();
                //                             if (listItems[index].route == 'phone') {
                //                               await LaunchService.makePhoneCall(
                //                                   listItems[index].title);
                //                             } else if (listItems[index].route == 'WhatsApp') {
                //                               await LaunchService.launchWhatsapp(
                //                                   context, '79093335046');
                //                             } else {
                //                               context.navigateNamedTo(listItems[index].route);
                //                             }
                //                           },
                //                           child: Container(
                //                             padding: const EdgeInsets.only(
                //                               top: 7,
                //                               bottom: 7,
                //                               left: 24.5,
                //                               right: 24.5,
                //                             ),
                //                             color: Colors.transparent,
                //                             alignment: Alignment.centerLeft,
                //                             child: Text(
                //                               listItems[index].title,
                //                               style: Theme.of(context).textTheme.displayMedium,
                //                             ),
                //                           ),
                //                         );
                //                       }),
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       );
                //     });
              } else if (tabsRouter.activeIndex != index) {
                tabsRouter.setActiveIndex(index);
              } else {
                tabsRouter.innerRouterOf<StackRouter>(tabsRouter.current.name)?.popUntilRoot();
              }
            });
        return Platform.isAndroid
            ? SizedBox(
                height: 60,
                child: child,
              )
            : child;
      },
    );
  }
}
