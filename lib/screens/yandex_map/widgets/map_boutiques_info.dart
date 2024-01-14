import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutiques_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class MapBoutiquesInfo extends StatelessWidget {
  const MapBoutiquesInfo({
    super.key,
    required this.onSelectBoutique,
  });

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
                  'Бутики Слепая курица',
                  style: Theme.of(context).textTheme.subtitle2,
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
          Padding(
            padding: const EdgeInsets.only(left: 28, right: 28),
            child: BoutiquesSwitch(
              indexSelect: 1,
              width: MediaQuery.of(context).size.width,
              navigateToMap: () {},
              navigateToBoutiques: () {
                context.navigateTo(const BoutiquesRoute());
              },
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: ListView.builder(
                itemCount: MapPointsInfo.getMapPointDataModels().length,
                itemBuilder: (context, index) {
                  final point = MapPointsInfo.getMapPointDataModels()[index];

                  return InkWell(
                    onTap: () {
                      onSelectBoutique(
                        AppLatLongDataModel(lat: point.latitude, long: point.longitude),
                        index,
                      );
                      context.popRoute();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 10.5,
                        left: 3.5,
                        right: 3.5,
                        bottom: 10.5,
                      ),
                      child: RichText(
                        maxLines: 1,
                        text: TextSpan(
                          children: BlindChickenCheckWordStyle.textToWords(
                            point.name,
                            context,
                          ),
                        ),
                      ),
                    ),
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
