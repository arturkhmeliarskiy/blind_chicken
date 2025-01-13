import 'package:blind_chicken/screens/news/widgets/news_video_player_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

class NewsMediaSlider extends StatefulWidget {
  const NewsMediaSlider({
    super.key,
    required this.images,
    required this.videos,
    required this.goBotton,
    required this.onTap,
    this.isSwitch = true,
    this.isBuilder = false,
    this.borderRadius = 15,
  });

  final List<String> images;
  final List<String> videos;
  final VoidCallback goBotton;
  final ValueChanged<int> onTap;
  final double borderRadius;
  final bool isSwitch;
  final bool isBuilder;

  @override
  State<NewsMediaSlider> createState() => _NewsMediaSliderState();
}

class _NewsMediaSliderState extends State<NewsMediaSlider> {
  final PageController _scrollController = PageController();
  int _indexItem = 0;
  double _aspectRatio = 1;
  final Map<int, double> _videosAspectRatio = {};

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    if (widget.videos.isEmpty) {
      getImageAspectRatio(widget.images.first).then((value) {
        setState(() {
          _aspectRatio = value;
        });
      });
    }

    super.initState();
  }

  _scrollListener() {
    // if (_scrollController.position.pixels < -160) {
    //   setState(() {
    //     widget.goBotton();

    //     logging(_scrollController.position.pixels.toString(), stackTrace: StackTrace.current);
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
            itemCount: widget.images.length + widget.videos.length,
            controller: _scrollController,
            onPageChanged: (value) {
              _indexItem = value;
              if (widget.videos.isNotEmpty && widget.videos.length > value) {
                setState(() {
                  _aspectRatio = _videosAspectRatio[value] ?? 0;
                });
              } else {
                getImageAspectRatio(widget.images[value - 1]).then((item) {
                  setState(() {
                    _aspectRatio = item;
                  });
                });
              }
            },
            itemBuilder: (context, index) {
              if (widget.videos.isNotEmpty && widget.videos.length > index) {
                return NewsVideoPlayerSlider(
                  url: widget.videos[index],
                  aspectRatio: _aspectRatio,
                  borderRadius: widget.borderRadius,
                  onTap: () {
                    widget.onTap(index);
                  },
                  onAspectRatio: (value) {
                    setState(() {
                      _aspectRatio = value;
                      _videosAspectRatio[index] = value;
                    });
                  },
                );
              } else {
                return InkWell(
                  onTap: () {
                    widget.onTap(index);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(widget.borderRadius),
                      bottomRight: Radius.circular(widget.borderRadius),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: widget.images[index - 1],
                      width: MediaQuery.of(context).orientation == Orientation.portrait
                          ? width
                          : width / 2,
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return AspectRatio(
                          aspectRatio: _aspectRatio,
                          child: Center(
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin: EdgeInsets.all(10),
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
              }
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
                    if (_indexItem != (widget.images.length + widget.videos.length) - 1)
                      InkWell(
                        onTap: () {
                          setState(() {
                            if ((_indexItem + 1) < widget.images.length + widget.videos.length) {
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
                      )
                    else
                      SizedBox(),
                  ],
                )
              ],
            ),
        ],
      ),
    );
  }
}
