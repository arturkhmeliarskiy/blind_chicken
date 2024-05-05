import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class BoutiquePreviewImagesScreen extends StatefulWidget {
  const BoutiquePreviewImagesScreen({
    super.key,
    required this.listImages,
    required this.goBotton,
  });

  final List<BoutiqueFotoDetailDataModel> listImages;
  final VoidCallback goBotton;

  @override
  State<BoutiquePreviewImagesScreen> createState() => _BoutiquePreviewImagesScreenState();
}

class _BoutiquePreviewImagesScreenState extends State<BoutiquePreviewImagesScreen> {
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
        widget.goBotton();
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
          widget.goBotton();
          setState(() {
            _isSwipe = false;
          });
        }
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Scaffold(
            body: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                _position = _pageController.position.pixels;
                return PhotoViewGalleryPageOptions(
                  imageProvider:
                      NetworkImage('https://slepayakurica.ru${widget.listImages[index].min}'),
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
          Material(
            color: Colors.transparent,
            child: SafeArea(
              child: SizedBox(
                height: 38,
                width: 38,
                child: InkWell(
                  onTap: widget.goBotton,
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
