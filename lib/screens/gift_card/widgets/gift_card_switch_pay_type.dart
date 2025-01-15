import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class GiftCardSwitchPayType extends StatefulWidget {
  const GiftCardSwitchPayType({super.key, required this.onChangeTypeCard});

  final ValueChanged<String> onChangeTypeCard;

  @override
  State<GiftCardSwitchPayType> createState() => _GiftCardSwitchPayTypeState();
}

class _GiftCardSwitchPayTypeState extends State<GiftCardSwitchPayType> {
  String _selectedItem = 'Виртуальная';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedItem = 'Виртуальная';
              widget.onChangeTypeCard(_selectedItem);
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 17.5,
                width: 17.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: BlindChickenColors.borderSwitchCard,
                  ),
                ),
                alignment: Alignment.center,
                child: _selectedItem == 'Виртуальная'
                    ? Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: BlindChickenColors.activeBorderTextField,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: BlindChickenColors.activeBorderTextField,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                'Виртуальная',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 21,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedItem = 'Пластиковая';
              widget.onChangeTypeCard(_selectedItem);
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 17.5,
                width: 17.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: BlindChickenColors.borderSwitchCard,
                  ),
                ),
                alignment: Alignment.center,
                child: _selectedItem == 'Пластиковая'
                    ? Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: BlindChickenColors.activeBorderTextField,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: BlindChickenColors.activeBorderTextField,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                'Пластиковая',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
