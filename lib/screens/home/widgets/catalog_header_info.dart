import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogHeaderInfo extends StatelessWidget {
  const CatalogHeaderInfo({
    super.key,
    required this.onClose,
    required this.title,
  });

  final VoidCallback onClose;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 12.6, right: 12.6),
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              InkWell(
                onTap: onClose,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    top: 8,
                    bottom: 8,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/x.svg',
                    height: 21,
                    width: 21,
                  ),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 12.6,
            right: 12.6,
          ),
          child: Divider(
            height: 1,
            color: BlindChickenColors.borderBottomColor,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}
