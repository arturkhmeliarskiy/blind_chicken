import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:photo_view/photo_view.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogSliderImagesCardItem extends StatefulWidget {
  const CatalogSliderImagesCardItem({
    super.key,
    required this.images,
    required this.goSwipeBack,
    required this.video,
  });

  final List<String> images;
  final VoidCallback goSwipeBack;
  final DetailProductVideoDataModel video;

  @override
  State<CatalogSliderImagesCardItem> createState() => _CatalogSliderImagesCardItemState();
}

class _CatalogSliderImagesCardItemState extends State<CatalogSliderImagesCardItem> {
  final PageController _pageController = PageController();
  bool _isSwipe = true;
  int _page = 0;

  @override
  void initState() {
    _pageController.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    setState(() {
      log(_pageController.position.pixels.toString());

      if (_pageController.position.pixels < -60 && _isSwipe) {
        widget.goSwipeBack();
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
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 21,
      height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PhotoAndVideoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _page = index;
              });
            },
            builder: (BuildContext context, int index) {
              return PhotoAndVideoViewGalleryPageOptions(
                imageProvider: NetworkImage(widget.images[index]),
                initialScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.contained * 5,
                minScale: PhotoViewComputedScale.contained,
                heroAttributes: PhotoViewHeroAttributes(tag: index),
                video: widget.video,
                isVideo: widget.video.v.isNotEmpty && index == 1,
                isProgressBar: false,
                isPlay: false,
              );
            },
            itemCount: widget.images.length,
            loadingBuilder: (context, event) => Center(
              child: Center(
                child: LoadingImage(),
              ),
            ),
            backgroundDecoration: const BoxDecoration(
              color: BlindChickenColors.backgroundColor,
            ),
            pageController: _pageController,
          ),
          if (widget.images.length > 1)
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: SizedBox(
                height: 12,
                width: widget.images.length * 9,
                child: Row(
                  children: List.generate(widget.images.length, (index) {
                    return Container(
                      height: 2,
                      width: 6,
                      margin: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        color: _page == index
                            ? BlindChickenColors.backgroundColor
                            : BlindChickenColors.borderSwitchCard,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
                ),
              ),
            )
        ],
      ),
    );
  }
}
