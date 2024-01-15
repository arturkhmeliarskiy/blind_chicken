import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_slider_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class BoutiquesDescriptionScreen extends StatefulWidget {
  const BoutiquesDescriptionScreen({
    super.key,
    required this.boutique,
  });

  final BoutiquesDataModel boutique;

  @override
  State<BoutiquesDescriptionScreen> createState() => _BoutiquesDescriptionScreenState();
}

class _BoutiquesDescriptionScreenState extends State<BoutiquesDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 10.5,
          right: 10.5,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 12,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    context.popRoute();
                  },
                  child: Text(
                    'Бутики',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                const SizedBox(
                  width: 11.2,
                ),
                Text(
                  'Афимол ${widget.boutique.title}',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ),
          Text(
            widget.boutique.title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            widget.boutique.address,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 16,
          ),
          BoutiqueSliderImages(
            listImages: widget.boutique.images,
            goBotton: () {},
            addLike: () {},
            onTap: () {
              context.pushRoute(
                BoutiquePreviewImagesRoute(
                  listImages: widget.boutique.images,
                  goBotton: () {
                    context.back();
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'График работы',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            widget.boutique.workingHours,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Адрес',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 7,
          ),
          RichText(
            text: TextSpan(
              text: '${widget.boutique.fullAddress}  ',
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: 'Показать на карте',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      final listMapPoints = MapPointsInfo.getMapPointDataModels();
                      context.pushRoute(
                        BoutiqueYandexMapRoute(
                          mapPoint: listMapPoints[0],
                        ),
                      );
                    },
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Категории товаров',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            widget.boutique.productCategories,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 3.5,
          ),
          Text(
            widget.boutique.productCategoriesBrend,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Бабочки',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 3.5,
          ),
          Text(
            widget.boutique.butterflies,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Балаклавы',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 3.5,
          ),
          Text(
            widget.boutique.balaclavas,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Балетки',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 3.5,
          ),
          Text(
            widget.boutique.balaclavas,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Бальзамы-восстановители для кожи',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 3.5,
          ),
          Text(
            widget.boutique.balmsRestorersSkin,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            'Бейсболки',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 3.5,
          ),
          Text(
            widget.boutique.baseballCaps,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
