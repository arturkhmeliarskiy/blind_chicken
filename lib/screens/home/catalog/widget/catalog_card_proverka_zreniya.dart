import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogCardProverkaZreniya extends StatelessWidget {
  const CatalogCardProverkaZreniya({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: MediaQuery.of(context).size.width / 2 - 21,
        height: constraints.maxWidth,
        margin: const EdgeInsets.all(10.5),
        alignment: Alignment.center,
        color: BlindChickenColors.activeBorderTextField.withOpacity(0.4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Напоминаем о важном',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: BlindChickenColors.backgroundColor,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color:
                        BlindChickenColors.textInput.withOpacity(0.4), // Shadow color with opacity
                    spreadRadius: 1, // Spread value
                    blurRadius: 5, // Blur value
                    offset: Offset(0, 5), // Offset (horizontal, vertical)
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: BlindChickenColors.backgroundColor.withOpacity(0.3),
                  shadowColor: BlindChickenColors.backgrounInputColor,
                ),
                onPressed: () {
                  context.navigateTo(VisionWarningRoute());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    'Проверьте зрение',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: BlindChickenColors.backgroundColor,
                          fontWeight: FontWeight.w700,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
