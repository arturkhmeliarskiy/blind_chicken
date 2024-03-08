import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class MapPointInfo extends StatelessWidget {
  const MapPointInfo({
    super.key,
    required this.boutique,
    required this.onMoreDetailed,
  });

  final BoutiqueDataModel boutique;
  final VoidCallback onMoreDetailed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 180),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 360,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: BlindChickenColors.activeBorderTextField.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.popRoute();
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/icons/x.svg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: CachedNetworkImage(
                              imageUrl: 'https://slepayakurica.ru/${boutique.fotoMin}',
                              height: 180,
                              width: 268,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const SizedBox(
                                height: 230,
                                child: LoadingImage(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 16),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                boutique.caption,
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 16),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                boutique.address,
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0, left: 16),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: BlindChickenCheckWordStyle.textToWords(
                                    boutique.schedule,
                                    context,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: onMoreDetailed,
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.only(
                          top: 10,
                          left: 16,
                          right: 16,
                        ),
                        decoration: BoxDecoration(
                          color: BlindChickenColors.activeBorderTextField,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Подробнее',
                              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                    color: BlindChickenColors.backgroundColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
