import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftMapBoutiquesInfo extends StatelessWidget {
  const GiftMapBoutiquesInfo({
    super.key,
    required this.selectedPoint,
    required this.onSelectBoutique,
    required this.boutiques,
  });

  final BoutiqueDataModel selectedPoint;
  final List<BoutiqueDataModel> boutiques;
  final Function(AppLatLongDataModel, int) onSelectBoutique;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BlindChickenColors.backgroundColor,
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  'Выберите место получения',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 14,
                  right: 10.5,
                ),
                child: InkWell(
                  onTap: () {
                    context.popRoute();
                  },
                  child: SvgPicture.asset(
                    'assets/icons/x.svg',
                    height: 28,
                    width: 28,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: ListView.builder(
                itemCount: boutiques.length,
                itemBuilder: (context, index) {
                  final point = boutiques[index];

                  return InkWell(
                    onTap: () {
                      onSelectBoutique(
                        AppLatLongDataModel(
                            lat: point.coordinates.latitude, long: point.coordinates.longitude),
                        index,
                      );
                      context.popRoute();
                    },
                    child: Container(
                        padding: const EdgeInsets.only(
                          top: 10.5,
                          left: 3.5,
                          right: 3.5,
                          bottom: 10.5,
                        ),
                        decoration: BoxDecoration(
                          color: selectedPoint == point
                              ? BlindChickenColors.backgroundColorItemFilter
                              : Colors.transparent,
                        ),
                        child: Text(
                          point.name,
                          style: Theme.of(context).textTheme.displayMedium,
                        )),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
