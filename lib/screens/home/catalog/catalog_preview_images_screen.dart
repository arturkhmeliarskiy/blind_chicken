import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:photo_view/photo_view.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class CatalogPreviewImagesScreen extends StatefulWidget {
  const CatalogPreviewImagesScreen({
    super.key,
    required this.listImages,
    required this.goBotton,
    required this.goBottonInfoProduct,
    required this.selectIndex,
    required this.video,
  });

  final List<String> listImages;
  final DetailProductVideoDataModel video;
  final VoidCallback goBotton;
  final VoidCallback goBottonInfoProduct;
  final int selectIndex;

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

  @override
  void didChangeDependencies() {
    if (widget.selectIndex > 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _pageController.jumpTo(MediaQuery.of(context).size.width * widget.selectIndex.toDouble());
      });
    }
    super.didChangeDependencies();
  }

  _scrollListener() {
    setState(() {
      logging(_pageController.position.pixels.toString(), stackTrace: StackTrace.current);
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
      child: PopScope(
        canPop: false,
        onPopInvoked: (vale) {
          if (_isSwipe) {
            widget.goBottonInfoProduct();
            _isSwipe = false;
          }
        },
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Scaffold(
              body: Column(
                children: [
                  Expanded(
                    child: PhotoAndVideoViewGallery.builder(
                      scrollPhysics: const BouncingScrollPhysics(),
                      builder: (BuildContext context, int index) {
                        _position = _pageController.position.pixels;
                        return PhotoAndVideoViewGalleryPageOptions(
                          imageProvider:
                              NetworkImage('https://slepayakurica.ru/${widget.listImages[index]}'),
                          initialScale: PhotoViewComputedScale.contained,
                          maxScale: PhotoViewComputedScale.contained * 5,
                          minScale: PhotoViewComputedScale.contained,
                          heroAttributes: PhotoViewHeroAttributes(tag: index),
                          video: widget.video,
                          isVideo: widget.video.v.isNotEmpty && index == 1,
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
                    onTap: () {
                      widget.goBottonInfoProduct();
                      setState(() {
                        _isSwipe = false;
                      });
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
