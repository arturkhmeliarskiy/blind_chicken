import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainCategoryProductItem extends StatelessWidget {
  const MainCategoryProductItem({
    super.key,
    required this.image,
    required this.title,
    required this.isLoading,
  });

  final Uint8List image;
  final String title;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    int numberColumns = 3;
    if (width > 1023) {
      numberColumns = 6;
    }
    return !isLoading && image.isNotEmpty
        ? Column(
            children: [
              SizedBox(
                width: width / numberColumns - 18,
                height: (width / numberColumns - 18) * 4 / 3,
                child: Image.memory(
                  image,
                  gaplessPlayback: true,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: width / numberColumns - 18,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        : Container(
            width: width / numberColumns - 18,
            height: (width / numberColumns - 18) * 4 / 3 + 26,
            decoration: BoxDecoration(
              color: BlindChickenColors.borderBottomColor,
              borderRadius: BorderRadius.circular(8),
            ),
          );
  }
}
