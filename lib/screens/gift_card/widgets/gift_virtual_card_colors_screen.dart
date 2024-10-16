import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/widgets/catalog_header_info.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class GiftVirualCardColorsScreen extends StatefulWidget {
  const GiftVirualCardColorsScreen({
    super.key,
    required this.selectedColor,
    required this.onChange,
  });

  final GiftCardModel selectedColor;
  final ValueChanged<GiftCardModel> onChange;

  @override
  State<GiftVirualCardColorsScreen> createState() => _GiftVirualCardColorsScreenState();
}

class _GiftVirualCardColorsScreenState extends State<GiftVirualCardColorsScreen> {
  GiftCardModel _selectedColor = BlindChickenGiftCardColors.listColors.first;

  @override
  void initState() {
    _selectedColor = widget.selectedColor;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant GiftVirualCardColorsScreen oldWidget) {
    _selectedColor = widget.selectedColor;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeaderInfo(
              title: 'Выберите цвет',
              onClose: () {
                context.maybePop();
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: BlindChickenGiftCardColors.listColors.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedColor = BlindChickenGiftCardColors.listColors[index];
                      });
                      widget.onChange(BlindChickenGiftCardColors.listColors[index]);
                      context.maybePop();
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 14,
                        right: 21,
                        left: 11.2,
                      ),
                      color:
                          _selectedColor.title == BlindChickenGiftCardColors.listColors[index].title
                              ? BlindChickenColors.backgroundColorItemFilter
                              : Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 17.5,
                            width: 17.5,
                            decoration: BoxDecoration(
                              color: BlindChickenGiftCardColors.listColors[index].color,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            BlindChickenGiftCardColors.listColors[index].title,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            BlindChickenTitleButton(
              title: 'Закрыть',
              onChange: () {
                context.maybePop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
