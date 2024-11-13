import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftCardSwitchCardMaterial extends StatefulWidget {
  const GiftCardSwitchCardMaterial({
    super.key,
    required this.onChangeTypeCard,
    required this.typeGiftCard,
  });

  final ValueChanged<String> onChangeTypeCard;
  final String typeGiftCard;

  @override
  State<GiftCardSwitchCardMaterial> createState() => _GiftCardSwitchCardMaterialState();
}

class _GiftCardSwitchCardMaterialState extends State<GiftCardSwitchCardMaterial> {
  String _selectedItem = 'Виртуальная';

  @override
  void initState() {
    _selectedItem = widget.typeGiftCard;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
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
