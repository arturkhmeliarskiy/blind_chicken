import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenUpdateAppInfo extends StatelessWidget {
  const BlindChickenUpdateAppInfo({
    super.key,
    required this.nowVersionApp,
    required this.updateVersionApp,
    required this.onBack,
    required this.onUpdate,
  });

  final String nowVersionApp;
  final String updateVersionApp;
  final VoidCallback onBack;
  final VoidCallback onUpdate;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: width - 32,
          decoration: BoxDecoration(
            color: BlindChickenColors.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Обновите приложение',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Ваша версия $nowVersionApp, а новая - $updateVersionApp',
                  style: Theme.of(context).textTheme.headline2?.copyWith(
                        color: BlindChickenColors.textInput,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Установите обновление, чтобы пользоваться самой новой версией приложения',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: onUpdate,
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                        color: BlindChickenColors.activeBorderTextField,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        Platform.isAndroid ? 'Перейти в Google Play' : 'Перейти в App Store',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              color: BlindChickenColors.backgroundColor,
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: onBack,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      height: 40,
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        'Использовать текущую версию',
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
