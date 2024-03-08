import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/login/login_phone_screen.dart';
import 'package:blocs/blocs.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isOpen = false;
  bool _isMain = false;
  OverlayEntry? overlayEntry;
  Timer? _timer;

  @override
  void initState() {
    InternetConnection().onStatusChange.listen((value) {
      if (value != InternetStatus.connected) {
        context.navigateTo(const NoInternetRoute());
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel(); //cancel the timer here
    super.dispose();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchWhatsapp(String phoneNumber) async {
    var whatsapp = "+$phoneNumber";
    var whatsappAndroid = Uri.parse("whatsapp://send?phone=$whatsapp&text=Здравствуйте");
    var iosUrl = Uri.parse("https://wa.me/$whatsapp?text=Здравствуйте");
    if (await canLaunchUrl(whatsappAndroid) || await canLaunchUrl(iosUrl)) {
      if (Platform.isIOS) {
        await launchUrl(iosUrl);
      } else {
        await launchUrl(whatsappAndroid);
      }
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: RichText(
            text: TextSpan(
              text: 'WhatsApp',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: BlindChickenColors.backgroundColor,
                  ),
              children: <TextSpan>[
                TextSpan(
                  text: ' не установлен на этом устройстве',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: BlindChickenColors.backgroundColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    }
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
                      onTap: () {
                        if (listItems[index].route == 'phone') {
                          _makePhoneCall(listItems[index].title);
                          context.navigateNamedTo('/dashboard/home/${listItems[index].route}');
                        } else if (listItems[index].route == 'WhatsApp') {
                          _launchWhatsapp('88005005329');
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

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeAutoRouterRoute(),
        LoginRoute(),
        ShoppingCartAutoRouterRoute(),
        FavouritesRoute(),
        ChatRoute(),
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
                  'assets/icons/message-circle.svg',
                  fit: BoxFit.cover,
                  height: 21,
                ),
                label: '',
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green[500],
            onTap: (int index) {
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
                  context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
                  context.navigateTo(
                    const HomeAutoRouterRoute(
                      children: [
                        CategoryRoute(),
                      ],
                    ),
                  );
                }
              } else if (index == 1) {
                final shared = GetIt.I.get<SharedPreferencesService>();
                final userAuthorized = shared.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
                if (userAuthorized) {
                  context.read<AccountBloc>().add(const AccountEvent.preloadData());
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
                        return const LoginPhoneScreen();
                      });
                }
              } else if (index == 2) {
                context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.preloadData());
                tabsRouter.setActiveIndex(index);
              } else if (index == 3) {
                context.read<FavouritesBloc>().add(const FavouritesEvent.preloadData());
                tabsRouter.setActiveIndex(index);
              } else if (index == 4) {
                setState(() {
                  isOpen = !isOpen;
                });
                if (isOpen) {
                  showOverlay(
                    context: context,
                    width: 220,
                    height: 94,
                    bottom: 56,
                    right: 0,
                    listItems: [
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
                    ],
                  );
                } else {
                  overlayEntry?.remove();
                }
              } else if (tabsRouter.activeIndex != index) {
                tabsRouter.setActiveIndex(index);
              } else {
                tabsRouter.innerRouterOf<StackRouter>(tabsRouter.current.name)?.popUntilRoot();
              }
              setState(() {
                _isMain = !_isMain;
              });
            });
        return Platform.isAndroid
            ? SizedBox(
                height: 56,
                child: child,
              )
            : child;
      },
    );
  }
}
