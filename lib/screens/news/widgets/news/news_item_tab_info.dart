import 'package:blind_chicken/screens/news/widgets/news/news_item_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class NewsItemTabInfo extends StatelessWidget {
  const NewsItemTabInfo({
    super.key,
    required this.item,
    required this.onTap,
    required this.onGoTap,
    required this.path,
  });

  final NewsInfoItemDataModel item;
  final VoidCallback onTap;
  final ValueChanged<String> onGoTap;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(left: 12, right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: BlindChickenColors.backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              Text(
                item.title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              Text(
                item.createAt,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: BlindChickenColors.textInput,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${item.description.substring(0, 120)}  ',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    TextSpan(
                      text: 'Подробнее',
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                      recognizer: TapGestureRecognizer()..onTap = onTap,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CachedNetworkImage(
                imageUrl: item.images.first,
                height: 250,
                fit: BoxFit.fill,
                placeholder: (context, url) => const SizedBox(
                  height: 250,
                  child: LoadingImage(),
                ),
              ),
              Container(
                height: 40,
                color: BlindChickenColors.backgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (path.isNotEmpty)
                      GestureDetector(
                        onTap: () {
                          onGoTap(path);
                        },
                        child: Container(
                          height: 25,
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: BlindChickenColors.borderBottomColor,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            item.titleButton,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: BlindChickenColors.activeBorderTextField,
                                ),
                          ),
                        ),
                      )
                    else
                      const SizedBox(),
                    Row(
                      children: [
                        const Icon(
                          Icons.remove_red_eye,
                          size: 14,
                          color: BlindChickenColors.borderInput,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          item.numberViews.toString(),
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                fontSize: 12,
                                color: BlindChickenColors.borderInput,
                              ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        if (!item.isViewed)
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: NewsItemIndicator(),
          )
      ],
    );
  }
}
