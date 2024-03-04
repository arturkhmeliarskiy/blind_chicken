import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class ShoppingCartPromotionalCode extends StatefulWidget {
  const ShoppingCartPromotionalCode({
    super.key,
    required this.onSendPromotional,
    required this.onRemovePromotional,
    this.isActivePromoCode = false,
    required this.promoCode,
  });

  final ValueChanged<String> onSendPromotional;
  final VoidCallback onRemovePromotional;
  final bool isActivePromoCode;
  final String promoCode;

  @override
  State<ShoppingCartPromotionalCode> createState() => _ShoppingCartPromotionalCodeState();
}

class _ShoppingCartPromotionalCodeState extends State<ShoppingCartPromotionalCode> {
  final TextEditingController _promotional = TextEditingController();

  @override
  void didUpdateWidget(covariant ShoppingCartPromotionalCode oldWidget) {
    _promotional.text = widget.promoCode;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _promotional.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Промокод',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 37,
                child: TextField(
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        height: 1,
                      ),
                  controller: _promotional,
                  onTap: () {},
                  onChanged: (value) {
                    setState(() {});
                  },
                  enabled: !widget.isActivePromoCode,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: widget.isActivePromoCode
                        ? BlindChickenColors.backgroundColorItemFilter
                        : BlindChickenColors.backgroundColor,
                    disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: BlindChickenColors.backgroundColorItemFilter,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: BlindChickenColors.borderTextField,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: BlindChickenColors.borderTextField,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: BlindChickenColors.borderTextField,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 10.5,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: () {
                if (widget.isActivePromoCode) {
                  widget.onRemovePromotional();
                } else {
                  widget.onSendPromotional(_promotional.text);
                }
              },
              child: Container(
                width: 44,
                height: 37,
                decoration: BoxDecoration(
                  color: BlindChickenColors.activeBorderTextField,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.only(
                  left: 7,
                  right: 7,
                  top: 10,
                  bottom: 10,
                ),
                child: widget.isActivePromoCode
                    ? SvgPicture.asset(
                        'assets/icons/x.svg',
                        color: BlindChickenColors.backgroundColor,
                      )
                    : SvgPicture.asset(
                        'assets/icons/check.svg',
                      ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
