import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_card.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutiques_switch.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class BoutiquesScreen extends StatelessWidget {
  const BoutiquesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 10.5,
          right: 10.5,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 17.5,
              bottom: 17.5,
            ),
            child: Text(
              'Бутики Слепая курица',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          BoutiquesSwitch(
            indexSelect: 0,
            navigateToMap: () {
              context.navigateTo(const YandexMapRoute());
            },
            navigateToBoutiques: () {},
          ),
          const SizedBox(
            height: 21,
          ),
          BlocBuilder<BoutiquesBloc, BoutiquesState>(
            builder: (context, state) {
              return state.maybeMap(
                preloadDataCompleted: (initState) {
                  return Column(
                    children: List.generate(
                      initState.boutiques.length,
                      (index) => BoutiqueCard(
                        onTap: () {
                          context.navigateTo(
                            HomeAutoRouterRoute(
                              children: [
                                BoutiquesDescriptionRoute(
                                  boutique: initState.boutiques[index],
                                ),
                              ],
                            ),
                          );
                        },
                        imageUrl: initState.boutiques[index].images[0],
                      ),
                    ),
                  );
                },
                orElse: () => const SizedBox(),
              );
            },
          )
        ],
      ),
    );
  }
}
