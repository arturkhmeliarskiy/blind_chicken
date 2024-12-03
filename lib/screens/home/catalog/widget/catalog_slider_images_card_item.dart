import 'dart:developer';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_item_video.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

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
          PageView.builder(
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: widget.images.length,
            onPageChanged: (value) {
              setState(() {
                _page = value;
              });
            },
            itemBuilder: (context, index) {
              if (widget.video.i.isNotEmpty && index == 1) {
                return CatalogSliderItemVideo(
                  video: widget.video.v,
                  image: widget.images[index],
                  isProgressBar: false,
                  isPlayIcon: false,
                );
              } else {
                return ZoomOverlay(
                  modalBarrierColor: Colors.black12, // Optional
                  minScale: 1, // Optional
                  maxScale: 4, // Optional
                  animationCurve: Curves
                      .fastOutSlowIn, // Defaults to fastOutSlowIn which mimics IOS instagram behavior
                  animationDuration: Duration(
                      milliseconds:
                          300), // Defaults to 100 Milliseconds. Recommended duration is 300 milliseconds for Curves.fastOutSlowIn
                  twoTouchOnly: true, // Defaults to false
                  onScaleStart: () {}, // optional VoidCallback
                  onScaleStop: () {}, // optional VoidCallback
                  child: CachedNetworkImage(
                    imageUrl: widget.images[index],
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width / 2 - 21,
                    height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                    placeholder: (context, url) => SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 21,
                      height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                      child: const LoadingImage(),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                );
              }
            },
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
