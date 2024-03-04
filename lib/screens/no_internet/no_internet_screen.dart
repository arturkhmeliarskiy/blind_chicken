import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetConnectionBloc, InternetConnectionState>(
      listener: (context, state) {
        state.maybeWhen(
          active: () {
            context.read<CatalogBloc>().add(const CatalogEvent.preloadData());
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
          },
          notActive: () {},
          orElse: () {},
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.wifi_off,
                size: 100,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Отсутствует интернет\nсоединение',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 25,
              ),
              IconButton(
                onPressed: () {
                  context.read<InternetConnectionBloc>().add(
                        const InternetConnectionEvent.preloadData(),
                      );
                },
                icon: const Icon(
                  Icons.rotate_left,
                  size: 80,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Повторить подключение',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
