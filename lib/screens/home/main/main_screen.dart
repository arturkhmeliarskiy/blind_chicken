import 'dart:async';
import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:appmetrica_push_plugin/appmetrica_push_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/main_category_cache_item.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _search = TextEditingController();
  final BlindChickenShowDialogError _blindChickenCatalogShowDialogError =
      BlindChickenShowDialogError();
  final BlindChickenShowDialogError _blindChickenBrandShowDialogError =
      BlindChickenShowDialogError();
  final BlindChickenShowDialogError _blindChickenTopBannerShowDialogError =
      BlindChickenShowDialogError();
  bool _isShowDialogCatalogError = false;
  bool _isShowDialogBrandError = false;
  bool _isShowDialogTopBannerError = false;
  bool _isOpenNotification = true;
  bool _isOpenUpdateVersionApp = true;
  bool _isButtonTop = false;
  double _historyPosition = 0.0;
  Timer? timer;
  Timer? timerNews;

  @override
  void initState() {
    _init();
    _checkPushToken();
    context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
    context.read<BrandBloc>().add(const BrandEvent.getBrands(
          selectTypePeople: 0,
          titleScreen: 'home',
        ));
    context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
    timer = Timer.periodic(
      const Duration(hours: 1),
      (timer) {
        context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
        _updateVersionApp();
        _checkPushToken();
      },
    );
    timerNews = Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        context.read<NewsBloc>().add(const NewsEvent.checkingReadNews());
      },
    );
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  _init() async {
    final sharedPreferencesService = GetIt.I.get<SharedPreferencesService>();
    final deviceInfoService = GetIt.I.get<DeviceInfoService>();
    String deviceId = sharedPreferencesService.getString(
          key: SharedPrefKeys.deviceId,
        ) ??
        '';

    if (deviceId.isEmpty) {
      deviceId = await deviceInfoService.getDeviceId();
      sharedPreferencesService.setString(
        key: SharedPrefKeys.deviceId,
        value: deviceId,
      );
      AppMetricaStringAttribute.withValue('deviceId', deviceId);
    }
  }

  _updateVersionApp() async {
    String appStoreInfoVersion = '';
    String nowVersionApp = '';
    String updateVersionApp = '';
    bool isUpdateVersionApp = false;
    final storeVersionAppRepository = GetIt.I.get<StoreVersionAppRepository>();
    final updateData = GetIt.I.get<UpdateDataService>();
    final result = await storeVersionAppRepository.getStoreVersion();

    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        nowVersionApp = packageInfo.version;
        updateVersionApp = appStoreInfoVersion;
        isUpdateVersionApp = true;
      }
    }

    if (isUpdateVersionApp && !updateData.isOpenUpdateModalWindow) {
      updateData.isOpenUpdateModalWindow = true;
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return BlindChickenUpdateAppInfo(
            nowVersionApp: nowVersionApp,
            updateVersionApp: updateVersionApp,
            onBack: () {
              context.maybePop();
            },
            onUpdate: () {
              context.maybePop();
              if (Platform.isAndroid || Platform.isIOS) {
                final url = Uri.parse(
                  Platform.isAndroid
                      ? "market://details?id=com.slepayakurica.app"
                      : "https://apps.apple.com/ru/app/id6471508431",
                );
                launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                );
              }
            },
          );
        },
      ).then(
        (val) {
          updateData.isOpenUpdateModalWindow = false;
        },
      );
    }
  }

  _checkPushToken() async {
    final sharedPreferencesService = GetIt.I.get<SharedPreferencesService>();
    final pushToken = sharedPreferencesService.getString(key: SharedPrefKeys.pushToken);
    bool isAuth = sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    final pushNotification = GetIt.I.get<PushNotificationRepository>();
    String pushTokenNow = '';

    if (Platform.isIOS) {
      final tokens = await AppMetricaPush.getTokens();
      pushTokenNow = tokens['apns'] ?? '';
    } else {
      // pushTokenNow = await FirebaseMessaging.instance.getToken() ?? '';
    }

    if (!pushTokenNow.contains(pushToken ?? '')) {
      if (isAuth) {
        await pushNotification.postNotificationInfo(event: '3');
      } else {
        await pushNotification.postNotificationInfo(event: '4');
      }
    }
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        _isButtonTop = true;
      });
    } else {
      setState(() {
        _isButtonTop = false;
      });
    }

    _historyPosition = _scrollController.position.pixels;
  }

  @override
  void dispose() {
    _search.dispose();
    _scrollController.dispose();
    timer?.cancel();
    timerNews?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            final updateData = GetIt.I.get<UpdateDataService>();
            final notificationMessage = initState.notificationMessage;
            if (!updateData.isInitApp && notificationMessage != null && _isOpenNotification) {
              if (notificationMessage.idMessage != updateData.idMessageNotification) {
                AppMetrica.reportEvent('Открытие PUSH-уведомления (Приложение было закрыnо)');
                if (notificationMessage.type == 'catalog') {
                  context.navigateTo(CatalogRoute(
                    title: '',
                    url: notificationMessage.section,
                    sort: notificationMessage.sort,
                    filterNotifcation: notificationMessage.filterNotifcation,
                    isNotification: true,
                    messageId: notificationMessage.idMessage,
                  ));
                }
                if (notificationMessage.type == 'product') {
                  context.navigateTo(
                    CatalogCardInfoRoute(
                      isLike: false,
                      listItems: const [],
                      favouritesProducts: const [],
                      isChildRoute: false,
                      code: notificationMessage.codeProduct,
                      messageId: notificationMessage.idMessage,
                    ),
                  );
                }
                if (notificationMessage.type == 'boutique') {
                  context.navigateTo(
                    BoutiquesDescriptionRoute(
                      uidStore: notificationMessage.uid,
                      isNotification: true,
                      messageId: notificationMessage.idMessage,
                    ),
                  );
                }
                if (notificationMessage.type == 'gift_card') {
                  context.navigateTo(
                    GiftCardRoute(
                      isNotification: true,
                      messageId: notificationMessage.idMessage,
                    ),
                  );
                }
                if (notificationMessage.type == 'news') {
                  context.navigateTo(
                    NewsNotificationDescriptionRoute(
                      idNews: notificationMessage.idNews,
                      messageId: notificationMessage.idMessage,
                    ),
                  );
                }
                if (notificationMessage.type == 'media') {
                  context.navigateTo(
                    MediaNotificationDescriptionRoute(
                      idNews: notificationMessage.idNews,
                      messageId: notificationMessage.idMessage,
                    ),
                  );
                }
                if (notificationMessage.type == 'notification') {
                  context.navigateTo(
                    NotificationInfoNotificationDescriptionRoute(
                      idNews: notificationMessage.idNews,
                      messageId: notificationMessage.idMessage,
                    ),
                  );
                }
              }

              updateData.idMessageNotification = notificationMessage.idMessage;
              setState(() {
                _isOpenNotification = false;
              });
            }
            if (initState.isUpdateVersionApp &&
                !initState.isNotification &&
                _isOpenUpdateVersionApp &&
                notificationMessage?.type != 'news' &&
                notificationMessage?.type != 'media' &&
                !updateData.isScapeUpdateApp) {
              updateData.isOpenUpdateModalWindow = true;
              showDialog(
                context: context,
                builder: (context) {
                  return BlindChickenUpdateAppInfo(
                    nowVersionApp: initState.nowVersionApp,
                    updateVersionApp: initState.updateVersionApp,
                    onBack: () {
                      context.maybePop();
                      updateData.isScapeUpdateApp = true;
                    },
                    onUpdate: () {
                      context.maybePop();
                      if (Platform.isAndroid || Platform.isIOS) {
                        final url = Uri.parse(
                          Platform.isAndroid
                              ? "market://details?id=com.slepayakurica.app"
                              : "https://apps.apple.com/ru/app/id6471508431",
                        );
                        launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                  );
                },
              ).then(
                (val) {
                  updateData.isScapeUpdateApp = true;
                  updateData.isOpenUpdateModalWindow = false;
                },
              );
              setState(() {
                _isOpenUpdateVersionApp = false;
              });
            }
            updateData.isInitApp = true;
            if (_isShowDialogCatalogError) {
              _isShowDialogCatalogError = false;
              _blindChickenCatalogShowDialogError.closeShowDialog();
            }
          },
          error: (value) {
            if (!_isShowDialogCatalogError &&
                !_isShowDialogBrandError &&
                !_isShowDialogTopBannerError) {
              _isShowDialogCatalogError = true;
              _blindChickenCatalogShowDialogError.openShowDualog(
                context: context,
                errorMessage: value.errorMessage,
                widget: BlocBuilder<CatalogBloc, CatalogState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      loadErrorButton: (value) {
                        return const SizedBox(
                          height: 15,
                          width: 15,
                          child: Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              color: BlindChickenColors.backgroundColor,
                            ),
                          ),
                        );
                      },
                      error: (value) {
                        return Text(
                          'Повторить',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.backgroundColor,
                              ),
                          textAlign: TextAlign.center,
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
                onRepeatRequest: () {
                  context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
                  context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                  context.read<BrandBloc>().add(const BrandEvent.getBrands(
                        selectTypePeople: 0,
                        titleScreen: 'home',
                      ));
                  context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
                  timer = Timer.periodic(
                    const Duration(hours: 1),
                    (timer) {
                      context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
                      _updateVersionApp();
                    },
                  );
                },
              );
            }
          },
          orElse: () => const SizedBox(),
        );
      },
      child: BlocListener<BrandBloc, BrandState>(
        listener: (context, state) {
          state.maybeMap(
            preloadDataCompleted: (value) {
              if (_isShowDialogBrandError) {
                _isShowDialogBrandError = false;
                _blindChickenBrandShowDialogError.closeShowDialog();
              }
            },
            error: (value) {
              if (!_isShowDialogCatalogError &&
                  !_isShowDialogBrandError &&
                  !_isShowDialogTopBannerError &&
                  value.titleScreen == 'home') {
                _isShowDialogBrandError = true;
                _blindChickenBrandShowDialogError.openShowDualog(
                  context: context,
                  errorMessage: value.errorMessage,
                  widget: BlocBuilder<BrandBloc, BrandState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        load: (value) {
                          return const SizedBox(
                            height: 15,
                            width: 15,
                            child: Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 3,
                                color: BlindChickenColors.backgroundColor,
                              ),
                            ),
                          );
                        },
                        error: (value) {
                          return Text(
                            'Повторить',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: BlindChickenColors.backgroundColor,
                                ),
                            textAlign: TextAlign.center,
                          );
                        },
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                  onRepeatRequest: () {
                    context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
                    context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                    context.read<BrandBloc>().add(const BrandEvent.getBrands(
                          selectTypePeople: 0,
                          titleScreen: 'home',
                        ));
                    context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
                    timer = Timer.periodic(
                      const Duration(hours: 1),
                      (timer) {
                        context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
                        _updateVersionApp();
                      },
                    );
                  },
                );
              }
            },
            orElse: () {},
          );
        },
        child: BlocListener<TopBannerBloc, TopBannerState>(
          listener: (context, state) {
            state.maybeMap(
              preloadData: (value) {
                if (_isShowDialogTopBannerError) {
                  _isShowDialogTopBannerError = false;
                  _blindChickenTopBannerShowDialogError.closeShowDialog();
                }
              },
              error: (value) {
                if (!_isShowDialogCatalogError &&
                    !_isShowDialogBrandError &&
                    !_isShowDialogTopBannerError) {
                  _isShowDialogTopBannerError = true;
                  _blindChickenTopBannerShowDialogError.openShowDualog(
                    context: context,
                    errorMessage: value.errorMessage,
                    widget: BlocBuilder<TopBannerBloc, TopBannerState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          load: (value) {
                            return const SizedBox(
                              height: 15,
                              width: 15,
                              child: Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 3,
                                  color: BlindChickenColors.backgroundColor,
                                ),
                              ),
                            );
                          },
                          error: (value) {
                            return Text(
                              'Повторить',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    color: BlindChickenColors.backgroundColor,
                                  ),
                              textAlign: TextAlign.center,
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      },
                    ),
                    onRepeatRequest: () {
                      context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
                      context.read<ShoppingCartBloc>().add(const ShoppingCartEvent.init());
                      context.read<BrandBloc>().add(const BrandEvent.getBrands(
                            selectTypePeople: 0,
                            titleScreen: 'home',
                          ));
                      context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
                      timer = Timer.periodic(
                        const Duration(hours: 1),
                        (timer) {
                          context.read<TopBannerBloc>().add(const TopBannerEvent.preloadData());
                          _updateVersionApp();
                        },
                      );
                    },
                  );
                }
              },
              orElse: () {},
            );
          },
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Scaffold(
                backgroundColor: BlindChickenColors.backgroundColor,
                body: SafeArea(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppBarBlindChicken(),
                        BlocBuilder<CatalogBloc, CatalogState>(
                          builder: (context, state) {
                            return state.maybeMap(
                              preloadDataCompleted: (initState) {
                                if (_scrollController.position.pixels == 0) {
                                  WidgetsBinding.instance.addPostFrameCallback((_) {
                                    _scrollController.jumpTo(_historyPosition);
                                  });
                                }
                                return PopScope(
                                  canPop: false,
                                  onPopInvoked: (value) {},
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              context.read<BrandBloc>().add(
                                                    const BrandEvent.getBrands(
                                                      selectTypePeople: 1,
                                                      titleScreen: 'подраздел',
                                                    ),
                                                  );
                                              context.navigateTo(
                                                MainCategoryRoute(
                                                  title: 'Женщинам',
                                                  selectIndexType: 1,
                                                ),
                                              );
                                              // context.read<CatalogBloc>().add(
                                              //       CatalogEvent.switchTypePeople(
                                              //           selectIndexType: 1),
                                              //     );
                                              final appMetricaEcommerce =
                                                  GetIt.I.get<AppMetricaEcommerceService>();
                                              appMetricaEcommerce.openPages(
                                                titleScreen: 'Раздел женское на главной странице',
                                              );
                                            },
                                            child: MainCategoryCacheItem(
                                              image: width > 767
                                                  ? initState.contentCacheInfo?.info[0].tabletImage
                                                  : initState.contentCacheInfo?.info[0].mobileImage,
                                              aspectRatio: width > 767 ? 16 / 9 : 9 / 12,
                                              title: 'Женщинам',
                                              width: width > 767 ? width / 3 - 7 : width / 2 - 14,
                                              padding: EdgeInsets.only(
                                                top: 14,
                                                right: 7,
                                                left: width > 767 ? 7 : 0,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context.read<BrandBloc>().add(
                                                    const BrandEvent.getBrands(
                                                      selectTypePeople: 2,
                                                      titleScreen: 'подраздел',
                                                    ),
                                                  );
                                              context.navigateTo(
                                                MainCategoryRoute(
                                                  title: 'Мужчинам',
                                                  selectIndexType: 2,
                                                ),
                                              );
                                              // context.read<CatalogBloc>().add(
                                              //       CatalogEvent.switchTypePeople(
                                              //           selectIndexType: 2),
                                              //     );
                                              final appMetricaEcommerce =
                                                  GetIt.I.get<AppMetricaEcommerceService>();
                                              appMetricaEcommerce.openPages(
                                                titleScreen: 'Раздел мужское на главной странице',
                                              );
                                            },
                                            child: MainCategoryCacheItem(
                                              image: width > 767
                                                  ? initState.contentCacheInfo?.info[1].tabletImage
                                                  : initState.contentCacheInfo?.info[1].mobileImage,
                                              aspectRatio: width > 767 ? 16 / 9 : 9 / 12,
                                              title: 'Мужчинам',
                                              width: width > 767 ? width / 3 - 7 : width / 2 - 14,
                                              padding: EdgeInsets.only(
                                                top: 14,
                                                left: 7,
                                                right: width > 767 ? 7 : 0,
                                              ),
                                            ),
                                          ),
                                          if (width > 767)
                                            GestureDetector(
                                              onTap: () {
                                                context.read<BrandBloc>().add(
                                                      const BrandEvent.getBrands(
                                                        selectTypePeople: 3,
                                                        titleScreen: 'подраздел',
                                                      ),
                                                    );
                                                // context.read<CatalogBloc>().add(
                                                //       CatalogEvent.switchTypePeople(
                                                //           selectIndexType: 3),
                                                //     );
                                                context.navigateTo(
                                                  MainCategoryRoute(
                                                    title: 'Детям',
                                                    selectIndexType: 3,
                                                  ),
                                                );

                                                final appMetricaEcommerce =
                                                    GetIt.I.get<AppMetricaEcommerceService>();
                                                appMetricaEcommerce.openPages(
                                                  titleScreen: 'Раздел детям на главной странице',
                                                );
                                              },
                                              child: MainCategoryCacheItem(
                                                image: width > 767
                                                    ? initState
                                                        .contentCacheInfo?.info[2].tabletImage
                                                    : initState
                                                        .contentCacheInfo?.info[2].mobileImage,
                                                aspectRatio: width > 767 ? 16 / 9 : 9 / 12,
                                                title: 'Детям',
                                                width: width > 767 ? width / 3 - 7 : width / 2 - 14,
                                                padding: EdgeInsets.only(
                                                  top: 14,
                                                  right: 7,
                                                  left: width > 767 ? 7 : 0,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          if (width < 767)
                                            GestureDetector(
                                              onTap: () {
                                                context.read<BrandBloc>().add(
                                                      const BrandEvent.getBrands(
                                                        selectTypePeople: 3,
                                                        titleScreen: 'подраздел',
                                                      ),
                                                    );
                                                context.navigateTo(
                                                  MainCategoryRoute(
                                                    title: 'Детям',
                                                    selectIndexType: 3,
                                                  ),
                                                );
                                              },
                                              child: MainCategoryCacheItem(
                                                image: width > 767
                                                    ? initState
                                                        .contentCacheInfo?.info[2].tabletImage
                                                    : initState
                                                        .contentCacheInfo?.info[2].mobileImage,
                                                aspectRatio: width > 767 ? 16 / 9 : 9 / 12,
                                                title: 'Детям',
                                                width: width / 2 - 14,
                                                padding: const EdgeInsets.only(
                                                  top: 14,
                                                  right: 7,
                                                ),
                                              ),
                                            ),
                                          GestureDetector(
                                            onTap: () {
                                              context.navigateTo(GiftCardRoute());
                                            },
                                            child: MainCategoryCacheItem(
                                              image: width > 767
                                                  ? initState.contentCacheInfo?.info[3].tabletImage
                                                  : initState.contentCacheInfo?.info[3].mobileImage,
                                              aspectRatio: width > 767 ? 16 / 9 : 9 / 12,
                                              title: 'Подарочная карта',
                                              width: width > 767 ? width / 3 - 7 : width / 2 - 14,
                                              padding: EdgeInsets.only(
                                                top: 14,
                                                left: 7,
                                                right: width > 767 ? 7 : 0,
                                              ),
                                            ),
                                          ),
                                          if (width > 767)
                                            GestureDetector(
                                              onTap: () {
                                                context.navigateTo(VisionWarningRoute());
                                                final appMetricaEcommerce =
                                                    GetIt.I.get<AppMetricaEcommerceService>();
                                                appMetricaEcommerce.openPages(
                                                  titleScreen:
                                                      'Проверка зрения на главной странице',
                                                );
                                              },
                                              child: MainCategoryCacheItem(
                                                image:
                                                    initState.contentCacheInfo?.info[4].tabletImage,
                                                aspectRatio: 16 / 9,
                                                title: 'Проверка зрения',
                                                width: width / 3 - 7,
                                                padding: EdgeInsets.only(
                                                  top: 14,
                                                  right: 7,
                                                  left: 7,
                                                ),
                                              ),
                                            ),
                                          if (width > 767 && initState.isSaleSectionVisible)
                                            GestureDetector(
                                              onTap: () {
                                                context.read<CatalogBloc>().add(
                                                      const CatalogEvent.getInfoProducts(
                                                        path: '/sale/',
                                                        isCleanHistory: true,
                                                      ),
                                                    );
                                                context.navigateTo(
                                                  CatalogRoute(
                                                    title: '',
                                                    url: '/sale/',
                                                  ),
                                                );
                                                final appMetricaEcommerce =
                                                    GetIt.I.get<AppMetricaEcommerceService>();
                                                appMetricaEcommerce.openPages(
                                                  titleScreen: 'Раздел sale на главной странице',
                                                );
                                              },
                                              child: MainCategoryCacheItem(
                                                image:
                                                    initState.contentCacheInfo?.info[5].tabletImage,
                                                aspectRatio: 16 / 9,
                                                title: 'Спецпредложения',
                                                width: width / 3 - 7,
                                                padding: const EdgeInsets.only(
                                                  top: 14,
                                                  right: 7,
                                                  left: 7,
                                                ),
                                              ),
                                            ),
                                          if (width > 767 && !initState.isSaleSectionVisible)
                                            GestureDetector(
                                              onTap: () {
                                                context.read<BrandBloc>().add(
                                                      BrandEvent.getBrands(
                                                        selectTypePeople: 0,
                                                        titleScreen: 'бренды',
                                                      ),
                                                    );
                                                context.navigateTo(
                                                  BrandsRoute(),
                                                );
                                                final appMetricaEcommerce =
                                                    GetIt.I.get<AppMetricaEcommerceService>();
                                                appMetricaEcommerce.openPages(
                                                  titleScreen: 'Раздел брендов на главной странице',
                                                );
                                              },
                                              child: MainCategoryCacheItem(
                                                image:
                                                    initState.contentCacheInfo?.info[6].tabletImage,
                                                aspectRatio: 16 / 9,
                                                title: 'Каталог брендов',
                                                width: width / 3 - 7,
                                                padding: const EdgeInsets.only(
                                                  top: 14,
                                                  right: 7,
                                                  left: 7,
                                                ),
                                              ),
                                            )
                                        ],
                                      ),
                                      if (width < 767)
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                context.navigateTo(VisionWarningRoute());
                                                final appMetricaEcommerce =
                                                    GetIt.I.get<AppMetricaEcommerceService>();
                                                appMetricaEcommerce.openPages(
                                                  titleScreen:
                                                      'Проверка зрения на главной странице',
                                                );
                                              },
                                              child: MainCategoryCacheItem(
                                                image:
                                                    initState.contentCacheInfo?.info[4].mobileImage,
                                                aspectRatio: 9 / 12,
                                                title: 'Проверка зрения',
                                                width: width / 2 - 14,
                                                padding: EdgeInsets.only(
                                                  top: 14,
                                                  right: 7,
                                                ),
                                              ),
                                            ),
                                            if (initState.isSaleSectionVisible)
                                              GestureDetector(
                                                onTap: () {
                                                  context.read<CatalogBloc>().add(
                                                        const CatalogEvent.getInfoProducts(
                                                          path: '/sale/',
                                                          isCleanHistory: true,
                                                        ),
                                                      );
                                                  context.navigateTo(
                                                    CatalogRoute(
                                                      title: '',
                                                      url: '/sale/',
                                                    ),
                                                  );
                                                  final appMetricaEcommerce =
                                                      GetIt.I.get<AppMetricaEcommerceService>();
                                                  appMetricaEcommerce.openPages(
                                                    titleScreen: 'Раздел sale на главной странице',
                                                  );
                                                },
                                                child: MainCategoryCacheItem(
                                                  image: initState
                                                      .contentCacheInfo?.info[5].mobileImage,
                                                  aspectRatio: 9 / 12,
                                                  title: 'Спецпредложения',
                                                  width: width / 2 - 14,
                                                  padding: const EdgeInsets.only(
                                                    top: 14,
                                                    left: 7,
                                                  ),
                                                ),
                                              )
                                            else
                                              GestureDetector(
                                                onTap: () {
                                                  context.read<BrandBloc>().add(
                                                        BrandEvent.getBrands(
                                                          selectTypePeople: 0,
                                                          titleScreen: 'бренды',
                                                        ),
                                                      );
                                                  context.navigateTo(
                                                    BrandsRoute(),
                                                  );
                                                  final appMetricaEcommerce =
                                                      GetIt.I.get<AppMetricaEcommerceService>();
                                                  appMetricaEcommerce.openPages(
                                                    titleScreen:
                                                        'Раздел брендов на главной странице',
                                                  );
                                                },
                                                child: MainCategoryCacheItem(
                                                  image: initState
                                                      .contentCacheInfo?.info[6].mobileImage,
                                                  aspectRatio: 9 / 12,
                                                  title: 'Каталог брендов',
                                                  width: width / 2 - 14,
                                                  padding: const EdgeInsets.only(
                                                    top: 14,
                                                    left: 7,
                                                  ),
                                                ),
                                              )
                                          ],
                                        ),
                                      GestureDetector(
                                        onTap: () {
                                          context.read<BrandBloc>().add(
                                                const BrandEvent.getBrands(
                                                  selectTypePeople: 0,
                                                  titleScreen: 'бренды',
                                                ),
                                              );
                                          context.navigateTo(
                                            BrandsRoute(),
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 28,
                                            left: 14,
                                            bottom: 14,
                                          ),
                                          child: Text(
                                            'Бренды',
                                            style:
                                                Theme.of(context).textTheme.headlineLarge?.copyWith(
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 37,
                                        margin: const EdgeInsets.only(
                                          right: 14,
                                          left: 14,
                                        ),
                                        child: Theme(
                                          data: Theme.of(context)
                                              .copyWith(splashColor: Colors.transparent),
                                          child: TextField(
                                            onTap: () {},
                                            onChanged: (value) {
                                              setState(() {});
                                              context
                                                  .read<BrandBloc>()
                                                  .add(BrandEvent.search(query: value));
                                            },
                                            controller: _search,
                                            cursorColor: BlindChickenColors.activeBorderTextField,
                                            textCapitalization: TextCapitalization.sentences,
                                            style: Theme.of(context).textTheme.displayMedium,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: BlindChickenColors.borderTextField,
                                                ),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: BlindChickenColors.borderTextField,
                                                ),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: BlindChickenColors.activeBorderTextField,
                                                ),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              suffixIcon: _search.text.isNotEmpty
                                                  ? InkWell(
                                                      onTap: () {
                                                        _search.clear();
                                                        context.read<BrandBloc>().add(
                                                              const BrandEvent.search(query: ''),
                                                            );
                                                      },
                                                      child: Transform.scale(
                                                        scale: 0.5,
                                                        child:
                                                            SvgPicture.asset('assets/icons/x.svg'),
                                                      ),
                                                    )
                                                  : const SizedBox(),
                                              hintText: 'Поиск',
                                              hintStyle: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    color: BlindChickenColors.textInput,
                                                  ),
                                              prefixIconConstraints: const BoxConstraints(
                                                minWidth: 0,
                                                minHeight: 0,
                                              ),
                                              prefixIcon: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 4,
                                                  right: 4,
                                                ),
                                                child: Transform.scale(
                                                  scale: 0.55,
                                                  child: SvgPicture.asset(
                                                    'assets/icons/search.svg',
                                                    color: BlindChickenColors.textInput,
                                                  ),
                                                ),
                                              ),
                                              contentPadding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      BlocBuilder<BrandBloc, BrandState>(builder: (context, state) {
                                        return state.maybeMap(
                                          preloadDataCompleted: (initState) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                left: 12.5,
                                                right: 12.5,
                                              ),
                                              child: DynamicHeightGridView(
                                                  shrinkWrap: true,
                                                  itemCount: initState.allBrands.length,
                                                  crossAxisCount: width > 767
                                                      ? 3
                                                      : 2, // number of items in each row
                                                  crossAxisSpacing: 13,
                                                  mainAxisSpacing: 13,
                                                  physics: const NeverScrollableScrollPhysics(),
                                                  builder: (context, index) {
                                                    return InkWell(
                                                      onTap: () {
                                                        FocusScope.of(context).unfocus();
                                                        _search.clear();
                                                        context.read<BrandBloc>().add(
                                                              const BrandEvent.search(query: ''),
                                                            );
                                                        context.read<CatalogBloc>().add(
                                                              CatalogEvent.getInfoProducts(
                                                                path: initState.allBrands[index].u,
                                                              ),
                                                            );
                                                        context.navigateTo(
                                                          CatalogRoute(
                                                            title: initState.allBrands[index].n,
                                                            url: initState.allBrands[index].u,
                                                          ),
                                                        );
                                                      },
                                                      child: SizedBox(
                                                        child: Text(
                                                          initState.allBrands[index].n,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .headlineLarge,
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            );
                                          },
                                          orElse: () => const SizedBox(),
                                        );
                                      }),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                );
                              },
                              orElse: () => const SizedBox(),
                              load: (value) {
                                return Column(
                                    children: List.generate(3, (index) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 14,
                                            right: 7,
                                            left: width > 767 ? 7 : 7,
                                          ),
                                          child: AspectRatio(
                                            aspectRatio: width > 767 ? 16 / 9 : 9 / 12,
                                            child: Shimmer.fromColors(
                                              baseColor:
                                                  BlindChickenColors.backgroundColorItemFilter,
                                              highlightColor:
                                                  BlindChickenColors.backgroundColorItemFilter,
                                              period: Duration(seconds: 2),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      BlindChickenColors.backgroundColorItemFilter,
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 14,
                                          left: 7,
                                          right: width > 767 ? 7 : 7,
                                        ),
                                        child: AspectRatio(
                                          aspectRatio: width > 767 ? 16 / 9 : 9 / 12,
                                          child: Shimmer.fromColors(
                                            baseColor: BlindChickenColors.backgroundColorItemFilter,
                                            highlightColor:
                                                BlindChickenColors.backgroundColorItemFilter,
                                            period: Duration(seconds: 2),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: BlindChickenColors.backgroundColorItemFilter,
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                    ],
                                  );
                                }));
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (_isButtonTop)
                GestureDetector(
                  onTap: () {
                    _scrollController.jumpTo(0.0);
                    setState(() {
                      _isButtonTop = false;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    margin: const EdgeInsets.only(left: 15, bottom: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: BlindChickenColors.activeBorderTextField,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/chevron-top.svg',
                    ),
                  ),
                )
              else
                const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
