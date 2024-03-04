import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class BoutiqueCard extends StatelessWidget {
  const BoutiqueCard({
    super.key,
    required this.boutique,
    required this.onTap,
  });

  final BoutiqueDataModel boutique;
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
                  imageUrl: 'https://slepayakurica.ru/${boutique.fotoMin}',
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
              boutique.caption,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              boutique.address,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              boutique.schedule,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontFamily: 'Roboto-Light',
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
