import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:appmetrica_push_plugin/appmetrica_push_plugin.dart';
import 'package:blind_chicken/lifecycle_manager.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  final StreamController<String> _stateController = StreamController();
  late AppLinks _appLinks;

  Stream<String> get state => _stateController.stream;

  Sink<String> get stateSink => _stateController.sink;

  @override
  void initState() {
    AppMetricaPush.requestPermission(alert: true, badge: true, sound: true);
    initDeepLinks();
    super.initState();
  }

  Future<void> initDeepLinks() async {
    _appLinks = AppLinks();

    _appLinks.uriLinkStream.listen((uri) async {
      log('getInitialAppLink: $uri');
      final productCode = uri.path.replaceAll('/product/', '').replaceAll('/', '');

      await Future<void>.delayed(
        const Duration(
          milliseconds: 1200,
        ),
      );
      _appRouter.push(
        CatalogCardInfoRoute(
          isLike: false,
          listItems: const [],
          favouritesProducts: const [],
          isChildRoute: false,
          code: productCode,
        ),
      );
    });
  }

  @override
  void dispose() {
    _stateController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.I.get<InternetConnectionBloc>()
            ..add(
              const InternetConnectionEvent.init(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<CatalogBloc>()
            ..add(
              const CatalogEvent.init(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<ShoppingCartBloc>()
            ..add(
              const ShoppingCartEvent.init(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<BoutiquesBloc>()
            ..add(
              const BoutiquesEvent.preloadData(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<FavouritesBloc>()
            ..add(
              const FavouritesEvent.preloadData(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<YandexMapBloc>()
            ..add(
              const YandexMapEvent.preloadData(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<AccountBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<SearchBloc>()
            ..add(
              const SearchEvent.init(),
            ),
        ),
        BlocProvider(create: (context) => GetIt.I.get<BrandBloc>()),
        BlocProvider(
          create: (context) => GetIt.I.get<SearchLocationBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<GiftCardBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<NewsBloc>()
            ..add(
              const NewsEvent.init(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<TopBannerBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<AppointmentBloc>()
            ..add(
              const AppointmentEvent.preloadData(),
            ),
        ),
      ],
      child: PushNotificationManager(
        openScreen: (notificationMessage) {
          final updateData = GetIt.I.get<UpdateDataService>();
          final filterService = GetIt.I.get<FilterService>();
          if (updateData.isInitApp) {
            if (notificationMessage.idMessage != updateData.idMessageNotification) {
              AppMetrica.reportEvent('Открытие PUSH-уведомления (Приложение было свернуто)');
              if (notificationMessage.type == 'catalog') {
                final info = filterService.converterNotificationInfo(
                  value: notificationMessage.section,
                );
                _appRouter.push(CatalogRoute(
                  title: '',
                  url: info.url,
                  sort: notificationMessage.sort,
                  filterNotifcation: info,
                  isNotification: true,
                  messageId: notificationMessage.idMessage,
                ));
              }
              if (notificationMessage.type == 'product') {
                _appRouter.push(
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
                _appRouter.push(
                  BoutiquesDescriptionRoute(
                    uidStore: notificationMessage.uid,
                    isNotification: true,
                    messageId: notificationMessage.idMessage,
                  ),
                );
              }
              if (notificationMessage.type == 'gift_card') {
                _appRouter.push(
                  GiftCardRoute(
                    isNotification: true,
                    messageId: notificationMessage.idMessage,
                  ),
                );
              }
              if (notificationMessage.type == 'news') {
                _appRouter.push(
                  NewsNotificationDescriptionRoute(
                    idNews: notificationMessage.idNews,
                    isNotification: true,
                    messageId: notificationMessage.idMessage,
                  ),
                );
              }
              if (notificationMessage.type == 'media') {
                _appRouter.push(
                  MediaNotificationDescriptionRoute(
                    idNews: notificationMessage.idNews,
                    isNotification: true,
                    messageId: notificationMessage.idMessage,
                  ),
                );
              }
              if (notificationMessage.type == 'notification') {
                _appRouter.push(
                  NotificationInfoNotificationDescriptionRoute(
                    idNews: notificationMessage.idNews,
                    isNotification: true,
                    messageId: notificationMessage.idMessage,
                  ),
                );
              }
            }
            updateData.idMessageNotification = notificationMessage.idMessage;
          }
        },
        child: LifeCycleManager(
          resumed: () async {
            final updateData = GetIt.I.get<UpdateDataService>();
            final filterService = GetIt.I.get<FilterService>();

            if (!updateData.isInitApp) {
              _appLinks = AppLinks();

              // Check initial link if app was in cold state (terminated)
              final uri = await _appLinks.getLatestAppLink();
              if (uri != null) {
                log('getInitialAppLink: $uri');
                final productCode = uri.path.replaceAll('/product/', '').replaceAll('/', '');

                await Future<void>.delayed(
                  const Duration(
                    milliseconds: 800,
                  ),
                );
                _appRouter.push(
                  CatalogCardInfoRoute(
                    isLike: false,
                    listItems: const [],
                    favouritesProducts: const [],
                    isChildRoute: false,
                    code: productCode,
                  ),
                );
              }
            }

            String type = '';
            String section = '';
            String iDMessage = '';
            String sort = '';
            String uid = '';
            String codeProduct = '';
            String idNews = '';

            if (Platform.isIOS) {
              const platformAppMetrica = MethodChannel('blind_chicken/getMessagesAppMetrica');
              final appMetrica = await platformAppMetrica.invokeMethod('appMetrica') as String;
              if (appMetrica.isNotEmpty) {
                final info = jsonDecode(appMetrica) as Map;
                type = info['type'] as String;
                section = info['section'] as String;
                iDMessage = info['id_message'] as String;
                sort = info['sort'] as String;
                uid = info['uid'] as String;
                codeProduct = info['code_product'] as String;
                idNews = info['id_news'] as String;
              } else {
                const platform = MethodChannel('blind_chicken/getMessages');
                type = await platform.invokeMethod('type') as String;
                section = await platform.invokeMethod('section') as String;
                iDMessage = await platform.invokeMethod('idMessage') as String;
                sort = await platform.invokeMethod('sort') as String;
                uid = await platform.invokeMethod('uid') as String;
                codeProduct = await platform.invokeMethod('codeProduct') as String;
                idNews = await platform.invokeMethod('idNews') as String;
              }
            } else {
              const platform = MethodChannel('appmetrica.push.notification');
              final message = await platform.invokeMethod('message') as String;
              if (message.isNotEmpty) {
                final info = jsonDecode(message) as Map;
                type = info['type'] as String;
                section = info['section'] as String;
                iDMessage = info['id_message'] as String;
                sort = info['sort'] as String;
                uid = info['uid'] as String;
                codeProduct = info['code_product'] as String;
                idNews = info['id_news'] as String;
              }
            }

            if (type.isNotEmpty) {
              if (iDMessage != updateData.idMessageNotification) {
                AppMetrica.reportEvent('Открытие PUSH-уведомления');
                if (type == 'catalog' && updateData.isInitApp) {
                  final info = filterService.converterNotificationInfo(
                    value: section,
                  );
                  await Future<void>.delayed(
                    const Duration(
                      milliseconds: 800,
                    ),
                  );
                  _appRouter.push(CatalogRoute(
                    title: '',
                    url: info.url,
                    sort: sort,
                    filterNotifcation: info,
                    isNotification: true,
                    messageId: iDMessage,
                  ));

                  updateData.idMessageNotification = iDMessage;
                }
                if (type == 'product' && updateData.isInitApp) {
                  await Future<void>.delayed(
                    const Duration(
                      milliseconds: 800,
                    ),
                  );
                  _appRouter.push(
                    CatalogCardInfoRoute(
                      isLike: false,
                      listItems: const [],
                      favouritesProducts: const [],
                      isChildRoute: false,
                      code: codeProduct,
                      messageId: iDMessage,
                    ),
                  );
                  updateData.idMessageNotification = iDMessage;
                }
                if (type == 'boutique' && updateData.isInitApp) {
                  _appRouter.push(
                    BoutiquesDescriptionRoute(
                      uidStore: uid,
                      isNotification: true,
                      messageId: iDMessage,
                    ),
                  );
                  updateData.idMessageNotification = iDMessage;
                }
                if (type == 'gift_card' && updateData.isInitApp) {
                  _appRouter.push(
                    GiftCardRoute(
                      isNotification: true,
                      messageId: iDMessage,
                    ),
                  );
                  updateData.idMessageNotification = iDMessage;
                }
                if (type == 'news' && updateData.isInitApp) {
                  _appRouter.push(
                    NewsNotificationDescriptionRoute(
                      idNews: idNews,
                      isNotification: true,
                      messageId: iDMessage,
                    ),
                  );
                  updateData.idMessageNotification = iDMessage;
                }
                if (type == 'media' && updateData.isInitApp) {
                  _appRouter.push(
                    MediaNotificationDescriptionRoute(
                      idNews: idNews,
                      isNotification: true,
                      messageId: iDMessage,
                    ),
                  );
                  updateData.idMessageNotification = iDMessage;
                }
                if (type == 'notification' && updateData.isInitApp) {
                  _appRouter.push(
                    NotificationInfoNotificationDescriptionRoute(
                      idNews: idNews,
                      isNotification: true,
                      messageId: iDMessage,
                    ),
                  );
                  updateData.idMessageNotification = iDMessage;
                }

                log(iDMessage.toString());
              }
            }
          },
          paused: () {},
          child: MaterialApp.router(
            theme: AppTheme.light,
            debugShowCheckedModeBanner: false,
            routeInformationProvider: _appRouter.routeInfoProvider(),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        ),
      ),
    );
  }
}
