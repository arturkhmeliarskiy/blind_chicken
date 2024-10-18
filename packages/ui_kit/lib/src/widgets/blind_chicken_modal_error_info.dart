import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenModalErrorInfo extends StatelessWidget {
  const BlindChickenModalErrorInfo({
    super.key,
    required this.errorMessage,
    required this.onRepeatRequest,
    required this.onCloseRequest,
    this.widget,
    this.isClose = false,
  });

  final String errorMessage;
  final Widget? widget;
  final bool isClose;
  final VoidCallback onRepeatRequest;
  final VoidCallback onCloseRequest;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: BlindChickenColors.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          height: isClose ? 145 : 110,
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                errorMessage,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: onRepeatRequest,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: BlindChickenColors.activeBorderTextField,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 30,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: widget ??
                      Text(
                        'Повторить',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              color: BlindChickenColors.backgroundColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                ),
              ),
              if (isClose)
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: onCloseRequest,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: BlindChickenColors.activeBorderTextField,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        height: 30,
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Отменить',
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                color: BlindChickenColors.activeBorderTextField,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      ],
    );
  }
}
