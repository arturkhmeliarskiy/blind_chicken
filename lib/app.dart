import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/no_internet/no_internet_screen.dart';
import 'package:blocs/blocs.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:ui_kit/ui_kit.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();
  App({super.key});

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
            create: (context) => GetIt.I.get<FilterBloc>()
              ..add(
                const FilterEvent.preloadData(),
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
            create: (context) => GetIt.I.get<FavouritesBloc>(),
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
            create: (context) => GetIt.I.get<InternetConnectionBloc>(),
          ),
        ],
        child: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) {
            // if (!(snapshot.data == ConnectivityResult.mobile ||
            //     snapshot.data == ConnectivityResult.wifi)) {
            //   context.navigateTo(const NoInternetRoute());
            // }

            return MaterialApp.router(
              theme: AppTheme.light,
              debugShowCheckedModeBanner: false,
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            );
          },
        ));
  }
}
