import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:app_links/app_links.dart';
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
  String idMessage = '';
  StreamSubscription<Uri>? _linkSubscription;
  final StreamController<String> _stateController = StreamController();
  late AppLinks _appLinks;

  Stream<String> get state => _stateController.stream;

  Sink<String> get stateSink => _stateController.sink;

  @override
  void initState() {
    initDeepLinks();
    super.initState();
  }

  Future<void> initDeepLinks() async {
    _appLinks = AppLinks();

    // Handle links
    _appLinks = AppLinks();

    _appLinks.uriLinkStream.listen((uri) async {
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
          create: (context) => GetIt.I.get<CatalogBloc>()
            ..add(
              const CatalogEvent.preloadData(),
            ),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<ShoppingCartBloc>()
            ..add(
              const ShoppingCartEvent.preloadData(),
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
        BlocProvider(
          create: (context) => GetIt.I.get<BrandBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<SearchLocationBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<GiftCardBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<InternetConnectionBloc>()
            ..add(
              const InternetConnectionEvent.preloadData(),
            ),
        ),
      ],
      child: LifeCycleManager(
        resumed: () async {
          final updateData = GetIt.I.get<UpdateDataService>();

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

          if (Platform.isIOS) {
            const me = MethodChannel('blind_chicken/getMessages');
            final section = await me.invokeMethod('section') as String;
            final iDMessage = await me.invokeMethod('idMessage') as String;
            final type = await me.invokeMethod('type') as String;
            final sort = await me.invokeMethod('sort') as String;
            final uid = await me.invokeMethod('uid') as String;
            final filterSelect = await me.invokeMethod('filter') as String;

            // final title = await me.invokeMethod('title') as String;
            // final body = await me.invokeMethod('body') as String;

            if (type.isNotEmpty) {
              // final split = info.split(',');
              // Map<int, String> values = {
              //   for (int i = 0; i < split.length; i++) i: split[i],
              // };

              if (iDMessage != idMessage) {
                if (type == 'catalog') {
                  if (updateData.isInitApp) {
                    await Future<void>.delayed(
                      const Duration(
                        milliseconds: 800,
                      ),
                    );
                    _appRouter.push(CatalogRoute(
                      title: '',
                      url: section,
                      sort: sort,
                      filterSelect: filterSelect,
                      isNotification: true,
                    ));
                    updateData.isNotification = false;
                  } else {
                    updateData.isInitApp = true;
                    updateData.isNotification = true;
                    updateData.sectionNotification = section;
                    updateData.sortNotification = sort;
                    updateData.filterSelectNotification = filterSelect;
                  }
                }
                if (type == 'boutique') {
                  _appRouter.push(
                    BoutiquesDescriptionRoute(
                      uidStore: uid,
                      isNotification: true,
                    ),
                  );
                }
                if (type == 'gift_card') {
                  _appRouter.push(
                    GiftCardRoute(
                      isNotification: true,
                    ),
                  );
                }
              }

              idMessage = iDMessage;
              log(iDMessage.toString());
            }
            updateData.isInitApp = true;
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
    );
  }
}
