import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_slider_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class BoutiquePreviewImagesScreen extends StatelessWidget {
  const BoutiquePreviewImagesScreen({
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
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait ? 200 : 50,
            ),
            SafeArea(
              child: BoutiqueSliderImages(
                listImages: listImages,
                goBotton: goBotton,
                marginRight: 0,
                borderRadius: 0,
                isBuilder: true,
                isSwitch: false,
                addLike: () {},
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
