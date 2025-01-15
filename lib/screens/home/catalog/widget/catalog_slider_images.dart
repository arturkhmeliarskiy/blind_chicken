import 'package:blind_chicken/utils/logging.dart';

import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_item_image.dart';
import 'package:blind_chicken/screens/home/catalog/widget/catalog_slider_item_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class CatalogSliderImages extends StatefulWidget {
  const CatalogSliderImages({
    super.key,
    required this.listImages,
    required this.goBotton,
    required this.addLike,
    required this.onTap,
    this.isGoBotton = true,
    this.isAddLike = true,
    required this.isLike,
    required this.deleteLike,
    required this.isZoom,
    required this.goSwipeBack,
    required this.video,
  });

  final List<String> listImages;
  final DetailProductVideoDataModel video;
  final VoidCallback goBotton;
  final VoidCallback goSwipeBack;
  final VoidCallback addLike;
  final VoidCallback deleteLike;
  final ValueChanged<int> onTap;
  final bool isGoBotton;
  final bool isAddLike;
  final bool isLike;
  final bool isZoom;

  @override
  State<CatalogSliderImages> createState() => _CatalogSliderImagesState();
}

class _CatalogSliderImagesState extends State<CatalogSliderImages> {
  final PageController _scrollController = PageController();
  double _position = 0.0;
  bool _isLike = false;
  bool _isSwipe = true;
  int _page = 0;

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    _isLike = widget.isLike;
    super.initState();
  }

  _scrollListener() {
    setState(() {
      logging(_scrollController.position.pixels.toString(), stackTrace: StackTrace.current);

      if (_scrollController.position.pixels < -70 && _isSwipe) {
        widget.goSwipeBack();
        _isSwipe = false;
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: widget.isZoom ? height : width * 4 / 3,
      width: width,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.listImages.length,
                      physics: const BouncingScrollPhysics(),
                      controller: _scrollController,
                      onPageChanged: (value) {
                        setState(() {
                          _page = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        _position = _scrollController.position.pixels;
                        if (widget.video.i.isNotEmpty && index == 1) {
                          return CatalogSliderItemVideo(
                            video: widget.video.v,
                            image: widget.listImages[index],
                          );
                        } else {
                          return InkWell(
                            onTap: () {
                              widget.onTap(index);
                            },
                            child: CatalogSliderItemImage(
                              isZoom: widget.isZoom,
                              image: widget.listImages[index],
                              index: index,
                            ),
                          );
                        }
                      },
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (widget.isGoBotton)
                        InkWell(
                          onTap: widget.goBotton,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              'assets/icons/arrow-left.svg',
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ),
                      if (widget.isAddLike)
                        InkWell(
                          onTap: () {
                            setState(() {
                              _isLike = !_isLike;
                              if (_isLike) {
                                widget.addLike();
                              } else {
                                widget.deleteLike();
                              }
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              _isLike ? 'assets/icons/like_active.svg' : 'assets/icons/like.svg',
                              height: 21,
                              width: 21,
                            ),
                          ),
                        )
                    ],
                  )
                ],
              ),
            ],
          ),
          if (widget.video.v.isNotEmpty && _page != 1)
            GestureDetector(
              onTap: () {
                _scrollController.jumpToPage(1);
              },
              child: Container(
                width: 74,
                height: 28,
                margin: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: BlindChickenColors.borderBottomColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_outlined,
                      size: 30,
                    ),
                    Text(
                      'Видео',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
