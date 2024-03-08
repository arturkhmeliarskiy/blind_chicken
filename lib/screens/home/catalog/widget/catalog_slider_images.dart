import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:ui_kit/ui_kit.dart';

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
  });

  final List<String> listImages;
  final VoidCallback goBotton;
  final VoidCallback addLike;
  final VoidCallback deleteLike;
  final VoidCallback onTap;
  final bool isGoBotton;
  final bool isAddLike;
  final bool isLike;

  @override
  State<CatalogSliderImages> createState() => _CatalogSliderImagesState();
}

class _CatalogSliderImagesState extends State<CatalogSliderImages> {
  final ScrollController _scrollController = ScrollController();
  GlobalKey _key = GlobalKey();
  double _position = 0.0;
  bool _isLike = false;

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    _isLike = widget.isLike;
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
        height: width * 4 / 3,
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
                      _position = _scrollController.position.pixels;
                      return CachedNetworkImage(
                        imageUrl: 'https://slepayakurica.ru/${widget.listImages[index]}',
                        width: MediaQuery.of(context).orientation == Orientation.portrait
                            ? width
                            : width,
                        height: width * 4 / 3,
                        fit: BoxFit.cover,
                        imageBuilder: (context, imageProvider) => PhotoView(
                          tightMode: true,
                          imageProvider: imageProvider,
                          filterQuality: FilterQuality.high,
                          backgroundDecoration: const BoxDecoration(
                            color: BlindChickenColors.backgroundColorItemFilter,
                          ),
                        ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      );
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
      ),
    );
  }
}
