import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class NewsSlider extends StatefulWidget {
  const NewsSlider({
    super.key,
    required this.media,
    required this.goBotton,
    required this.onTap,
    this.isSwitch = true,
    this.isBuilder = false,
    this.borderRadius = 4,
  });

  final List<String> media;
  final VoidCallback goBotton;
  final ValueChanged<int> onTap;
  final double borderRadius;
  final bool isSwitch;
  final bool isBuilder;

  @override
  State<NewsSlider> createState() => _NewsSliderState();
}

class _NewsSliderState extends State<NewsSlider> {
  final PageController _scrollController = PageController();
  int _indexItem = 0;
  double _aspectRatio = 1;

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    getImageAspectRatio(widget.media.first).then((value) {
      setState(() {
        _aspectRatio = value;
      });
    });
    super.initState();
  }

  _scrollListener() {
    // if (_scrollController.position.pixels < -160) {
    //   setState(() {
    //     widget.goBotton();

    //     log(_scrollController.position.pixels.toString());
    //   });
    // }
  }

  Future<double> getImageAspectRatio(String url) async {
    ImageInfo imageInfo = await ImageService().getImageUrlInfo(url);
    return imageInfo.image.width / imageInfo.image.height;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AspectRatio(
      aspectRatio: _aspectRatio,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ExpandablePageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.media.length,
            controller: _scrollController,
            onPageChanged: (value) {
              _indexItem = value;
              getImageAspectRatio(widget.media[value]).then((item) {
                setState(() {
                  _aspectRatio = item;
                });
              });
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  widget.onTap(index);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: widget.media[index],
                    width: MediaQuery.of(context).orientation == Orientation.portrait
                        ? width
                        : width / 2,
                    fit: BoxFit.cover,
                    placeholder: (context, url) {
                      return AspectRatio(
                        aspectRatio: _aspectRatio,
                        child: Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      );
                    },
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
          if (widget.isSwitch)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_indexItem != 0)
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (_indexItem != 0) {
                              _indexItem--;
                              _scrollController.previousPage(
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
                            color: BlindChickenColors.backgroundColor.withOpacity(0.8),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/chevron-left.svg',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      )
                    else
                      SizedBox(),
                    if (_indexItem != widget.media.length - 1)
                      InkWell(
                        onTap: () {
                          setState(() {
                            if ((_indexItem + 1) < widget.media.length) {
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
                            color: BlindChickenColors.backgroundColor.withOpacity(0.8),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/icons/chevron-right.svg',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      )
                    else
                      SizedBox()
                  ],
                )
              ],
            ),
        ],
      ),
    );
  }
}
