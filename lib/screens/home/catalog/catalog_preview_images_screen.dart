import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_preview_slider_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class CatalogPreviewImagesScreen extends StatefulWidget {
  const CatalogPreviewImagesScreen({
    super.key,
    required this.listImages,
    required this.goBotton,
    required this.goBottonInfoProduct,
  });

  final List<String> listImages;
  final VoidCallback goBotton;
  final VoidCallback goBottonInfoProduct;

  @override
  State<CatalogPreviewImagesScreen> createState() => _CatalogPreviewImagesScreenState();
}

class _CatalogPreviewImagesScreenState extends State<CatalogPreviewImagesScreen> {
  final PageController _pageController = PageController();
  double _position = 0.0;
  bool _isSwipe = true;

  @override
  void initState() {
    _pageController.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    setState(() {
      log(_pageController.position.pixels.toString());
      if (_pageController.position.pixels < -80 && _isSwipe) {
        widget.goBottonInfoProduct();
        _isSwipe = false;
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.velocity.pixelsPerSecond.dx > 0 && _isSwipe) {
          widget.goBottonInfoProduct();
          setState(() {
            _isSwipe = false;
          });
        }
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: PhotoViewGallery.builder(
                    scrollPhysics: const BouncingScrollPhysics(),
                    builder: (BuildContext context, int index) {
                      _position = _pageController.position.pixels;
                      return PhotoViewGalleryPageOptions(
                        imageProvider:
                            NetworkImage('https://slepayakurica.ru/${widget.listImages[index]}'),
                        initialScale: PhotoViewComputedScale.contained,
                        maxScale: PhotoViewComputedScale.contained * 5,
                        minScale: PhotoViewComputedScale.contained,
                        heroAttributes: PhotoViewHeroAttributes(tag: index),
                      );
                    },
                    itemCount: widget.listImages.length,
                    loadingBuilder: (context, event) => Center(
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    backgroundDecoration: const BoxDecoration(
                      color: BlindChickenColors.backgroundColor,
                    ),
                    pageController: _pageController,
                  ),
                ),
                if (widget.listImages.length > 1)
                  Container(
                    color: BlindChickenColors.borderBottomColor,
                    height: 2,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          var isPortrait =
                              MediaQuery.of(context).orientation == Orientation.portrait;
                          final widthController = ((MediaQuery.of(context).size.width /
                                  (isPortrait ? widget.listImages.length : 2)) +
                              (_position));

                          return Container(
                            height: 2,
                            width: _position.isNegative
                                ? widthController.isNegative
                                    ? 0
                                    : widthController
                                : MediaQuery.of(context).size.width /
                                    (isPortrait ? widget.listImages.length : 2),
                            margin: EdgeInsets.symmetric(
                              horizontal: _position.isNegative
                                  ? 0
                                  : _position / (isPortrait ? widget.listImages.length : 2),
                            ),
                            color: BlindChickenColors.activeBorderTextField,
                          );
                        }),
                  )
              ],
            ),
            // body: CatalogPreviewSliderImages(
            //   listImages: widget.listImages,
            //   goSwipeBack: widget.goBottonInfoProduct,
            // ),
          ),
          Material(
            color: Colors.transparent,
            child: SafeArea(
              child: SizedBox(
                height: 38,
                width: 38,
                child: InkWell(
                  onTap: widget.goBottonInfoProduct,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
