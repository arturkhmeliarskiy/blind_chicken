import 'dart:async';
import 'dart:convert';
import 'dart:developer';

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
          const me = MethodChannel('blind_chicken/getMessages');
          final info = await me.invokeMethod('getMessage') as String;

          if (info.isNotEmpty) {
            final split = info.split(',');
            Map<int, String> values = {
              for (int i = 0; i < split.length; i++) i: split[i],
            };

            if (idMessage != values[3]) {
              if (values[4] == 'catalog') {
                _appRouter.push(CatalogRoute(
                  title: '',
                  url: values[2] ?? '',
                  sort: values[5] ?? '',
                  isNotification: true,
                ));
              }
              if (values[4] == 'boutiques') {
                _appRouter.push(const BoutiquesRoute());
              }
              if (values[4] == 'gift_card') {
                _appRouter.push(const GiftCardRoute());
              }
            }
            idMessage = values[3] ?? '';
            log(values.toString());
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
