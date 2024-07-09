import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/src/widgets/custom_rich_text.dart';
import 'package:auto_route/auto_route.dart';

class BlindChickenTopBanner extends StatelessWidget {
  const BlindChickenTopBanner({super.key});

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopBannerBloc, TopBannerState>(
      builder: (context, state) {
        return state.maybeMap(
          preloadData: (initState) {
            return LayoutBuilder(
              builder: (context, constraints) {
                if (initState.info.data.title.isNotEmpty) {
                  return GestureDetector(
                    onTap: () {
                      if (initState.info.data.type == 'catalog') {
                        context.read<CatalogBloc>().add(
                              CatalogEvent.getInfoProducts(
                                path: initState.info.data.section,
                              ),
                            );

                        context.navigateTo(
                          HomeAutoRouterRoute(
                            children: [
                              CatalogRoute(
                                title: '',
                                url: initState.info.data.section,
                              ),
                            ],
                          ),
                        );
                      } else if (initState.info.data.type == 'boutique') {
                        context.read<BoutiquesBloc>().add(
                              BoutiquesEvent.getInfoBoutique(
                                uid: initState.info.data.uid,
                              ),
                            );
                        context.navigateTo(
                          HomeAutoRouterRoute(
                            children: [
                              BoutiquesDescriptionRoute(),
                            ],
                          ),
                        );
                      } else if (initState.info.data.type == 'gift_card') {
                        context.navigateTo(
                          HomeAutoRouterRoute(
                            children: [
                              GiftCardRoute(),
                            ],
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8),
                      color: Color(_getColorFromHex(initState.info.data.colorBackground)),
                      alignment: Alignment.center,
                      child: CustomRichText(
                          richTextData: textTransformation(
                        context: context,
                        text: initState.info.data.title,
                      )),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
