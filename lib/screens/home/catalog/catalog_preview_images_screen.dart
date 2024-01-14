import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class CatalogPreviewImagesScreen extends StatelessWidget {
  const CatalogPreviewImagesScreen({
    super.key,
    required this.listImages,
    required this.goBotton,
  });

  final List<String> listImages;
  final VoidCallback goBotton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                goBotton();
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 14,
                  right: 10.5,
                ),
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/icons/x.svg',
                  height: 28,
                  width: 28,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SafeArea(
              child: CatalogSliderImages(
                isLike: false,
                listImages: listImages,
                goBotton: goBotton,
                isAddLike: false,
                isGoBotton: false,
                addLike: () {},
                onTap: () {},
                deleteLike: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
