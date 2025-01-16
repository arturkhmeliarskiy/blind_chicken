import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:blind_chicken/screens/boutiques/widgets/boutique_slider_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:photo_view/photo_view.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class BoutiqueSlider extends StatefulWidget {
  const BoutiqueSlider({
    super.key,
    required this.media,
    required this.goBotton,
    required this.addLike,
    required this.onTap,
    this.isSwitch = true,
    this.isBuilder = false,
    this.borderRadius = 4,
  });

  final List<String> media;
  final VoidCallback goBotton;
  final VoidCallback addLike;
  final ValueChanged<int> onTap;
  final double borderRadius;
  final bool isSwitch;
  final bool isBuilder;

  @override
  State<BoutiqueSlider> createState() => _BoutiqueSliderState();
}

class _BoutiqueSliderState extends State<BoutiqueSlider> {
  final PageController _scrollController = PageController();

  int _indexItem = 0;

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    setState(() {
      if (_scrollController.position.pixels < -80) {
        widget.goBotton();
      }

      logging(_scrollController.position.pixels.toString(), stackTrace: StackTrace.current);
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
    return SizedBox(
      height: 286,
      width: width,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.media.length,
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    return FileService.getUrlType(widget.media[index]) != UrlType.video
                        ? InkWell(
                            onTap: () {
                              widget.onTap(index);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(widget.borderRadius),
                              child: CachedNetworkImage(
                                imageUrl: 'https://slepayakurica.ru${widget.media[index]}',
                                width: MediaQuery.of(context).orientation == Orientation.portrait
                                    ? width
                                    : width / 2,
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
                          )
                        : InkWell(
                            onTap: () {
                              widget.onTap(index);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(widget.borderRadius),
                              child: SizedBox(
                                width: width,
                                child: BoutiqueSliderItem(
                                  url: 'https://slepayakurica.ru${widget.media[index]}',
                                ),
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
                          if (_indexItem + 1 < widget.media.length) {
                            _indexItem++;
                            _scrollController.nextPage(
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
    );
  }
}
