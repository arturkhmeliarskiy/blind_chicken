import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BoutiqueCard extends StatelessWidget {
  const BoutiqueCard({
    super.key,
    required this.imageUrl,
    required this.onTap,
  });

  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const SizedBox(
                    height: 230,
                    child: LoadingImage(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Department Store',
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Москва, ТЦ Афимолл Сити, 2 этаж',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Пн-Чт 10:00-22:00, Пт-Сб 10:00-23:00, Вс 10:00-22:00',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontFamily: 'Roboto-Light',
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
