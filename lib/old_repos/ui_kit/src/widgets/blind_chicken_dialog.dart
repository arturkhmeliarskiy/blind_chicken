import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class BlindChickenDialog {
  static Future<void> exitApp({
    required BuildContext context,
    required double height,
    required double width,
    Widget button = const SizedBox(),
    bool isScroll = true,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
  }) async {
    await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        contentPadding: const EdgeInsets.only(top: 10.0),
        alignment: Alignment.center,
        content: SizedBox(
          height: height,
          child: Column(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              SizedBox(
                height: 50,
                width: width,
                child: Column(
                  children: [
                    Text(
                      'Выйти из приложения',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Вы хотите выйти из приложения?',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        exit(0);
                      },
                      //return true when click on "Yes"
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: BlindChickenColors.activeBorderTextField),
                        ),
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Выйти',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                      //return true when click on "Yes"
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: BlindChickenColors.activeBorderTextField,
                        ),
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Отмена',
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: BlindChickenColors.backgroundColor,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
