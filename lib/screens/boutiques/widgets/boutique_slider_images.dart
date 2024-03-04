import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:photo_view/photo_view.dart';
import 'package:ui_kit/ui_kit.dart';

class BoutiqueSliderImages extends StatefulWidget {
  const BoutiqueSliderImages({
    super.key,
    required this.listImages,
    required this.goBotton,
    required this.addLike,
    required this.onTap,
    this.isSwitch = true,
    this.isBuilder = false,
    this.marginRight = 20,
    this.borderRadius = 4,
  });

  final List<BoutiqueFotoDetailDataModel> listImages;
  final VoidCallback goBotton;
  final VoidCallback addLike;
  final VoidCallback onTap;
  final double marginRight;
  final double borderRadius;
  final bool isSwitch;
  final bool isBuilder;

  @override
  State<BoutiqueSliderImages> createState() => _BoutiqueSliderImagesState();
}

class _BoutiqueSliderImagesState extends State<BoutiqueSliderImages> {
  final ScrollController _scrollController = ScrollController();
  int _indexItem = 0;

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    setState(() {
      log(_scrollController.position.pixels.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        height: 286,
        width: width,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.listImages.length,
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: widget.marginRight),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(widget.borderRadius),
                          child: CachedNetworkImage(
                            imageUrl: 'https://slepayakurica.ru${widget.listImages[index].min}',
                            width: MediaQuery.of(context).orientation == Orientation.portrait
                                ? width - widget.marginRight
                                : width - widget.marginRight / 2,
                            fit: BoxFit.cover,
                            imageBuilder: widget.isBuilder
                                ? (context, imageProvider) => PhotoView(
                                      imageProvider: imageProvider,
                                      filterQuality: FilterQuality.high,
                                      customSize: Size(width, width),
                                    )
                                : null,
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            if (widget.isSwitch)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (_indexItem != 0) {
                              _indexItem--;
                              _scrollController.animateTo(
                                width * _indexItem,
                                curve: Curves.linear,
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                              );
                            }
                          });
                        },
                        child: Container(
                          height: 38.5,
                          width: 38.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: BlindChickenColors.backgroundColor,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/chevron-left.svg',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (_indexItem + 1 < widget.listImages.length) {
                              _indexItem++;
                              _scrollController.animateTo(
                                width * _indexItem,
                                curve: Curves.linear,
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                              );
                            }
                          });
                        },
                        child: Container(
                          height: 38.5,
                          width: 38.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: BlindChickenColors.backgroundColor,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/chevron-right.svg',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
