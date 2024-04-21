import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/lifecycle_manager.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_kit/ui_kit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  String idMessage = '';
  final StreamController<String> _stateController = StreamController();

  Stream<String> get state => _stateController.stream;

  Sink<String> get stateSink => _stateController.sink;

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
          if (Platform.isIOS) {
            const me = MethodChannel('blind_chicken/getMessages');
            final info = await me.invokeMethod('getMessage') as String;
            final filterSelect = await me.invokeMethod('filter') as String;
            final title = await me.invokeMethod('title') as String;
            log(title);

            if (info.isNotEmpty) {
              final split = info.split(',');
              Map<int, String> values = {
                for (int i = 0; i < split.length; i++) i: split[i],
              };

              if (idMessage != values[2]) {
                if (values[3] == 'catalog') {
                  await Future<void>.delayed(
                    const Duration(
                      milliseconds: 500,
                    ),
                  );
                  _appRouter.push(CatalogRoute(
                    title: '',
                    url: values[1] ?? '',
                    sort: values[4] ?? '',
                    filterSelect: filterSelect,
                    isNotification: true,
                  ));
                }
                if (values[3] == 'boutique') {
                  _appRouter.push(
                    BoutiquesDescriptionRoute(
                      uidStore: values[5] ?? '',
                      isNotification: true,
                    ),
                  );
                }
                if (values[3] == 'gift_card') {
                  _appRouter.push(
                    GiftCardRoute(
                      isNotification: true,
                    ),
                  );
                }
              }
              idMessage = values[2] ?? '';
              log(values.toString());
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
    );
  }
}
