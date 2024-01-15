import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

class GiftVirtualCardColors extends StatefulWidget {
  const GiftVirtualCardColors({
    super.key,
    required this.selectedColor,
    required this.onSelectedColor,
  });

  final Map<dynamic, dynamic> selectedColor;
  final ValueChanged<Map<dynamic, dynamic>> onSelectedColor;

  @override
  State<GiftVirtualCardColors> createState() => _GiftVirtualCardColorsState();
}

class _GiftVirtualCardColorsState extends State<GiftVirtualCardColors> {
  Map<dynamic, dynamic> _selectedColor = {
    'title': 'Lilac',
    'color': BlindChickenColors.lilac,
  };

  @override
  void initState() {
    _selectedColor = widget.selectedColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateTo(
          GiftVirualCardColorsRoute(
            selectedColor: _selectedColor,
            onChange: (value) {
              setState(() {
                _selectedColor = value;
              });
              widget.onSelectedColor(_selectedColor);
            },
          ),
        );
      },
      child: Container(
        height: 37,
        decoration: BoxDecoration(
          border: Border.all(
            color: BlindChickenColors.borderTextField,
          ),
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.5,
                ),
                Container(
                  height: 17.5,
                  width: 17.5,
                  decoration: BoxDecoration(
                    color: _selectedColor['color'],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  _selectedColor['title'],
                  style: Theme.of(context).textTheme.displayMedium,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: SvgPicture.asset('assets/icons/chevron-bottom.svg'),
            )
          ],
        ),
      ),
    );
  }
}
