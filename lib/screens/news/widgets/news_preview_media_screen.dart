import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:models/models.dart';
import 'package:photo_view/photo_view.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class NewsPreviewMediaScreen extends StatefulWidget {
  const NewsPreviewMediaScreen({
    super.key,
    required this.media,
    required this.goBotton,
    required this.selectIndex,
  });

  final List<NewsSliderImageItemDataModel> media;
  final VoidCallback goBotton;
  final int selectIndex;

  @override
  State<NewsPreviewMediaScreen> createState() => _NewsPreviewMediaScreenState();
}

class _NewsPreviewMediaScreenState extends State<NewsPreviewMediaScreen> {
  PageController _pageController = PageController();
  bool _isSwipe = true;

  @override
  void initState() {
    _pageController.addListener(_scrollListenerList);
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

  _scrollListenerList() {
    setState(() {
      if (_pageController.position.pixels < -80 && _isSwipe) {
        widget.goBotton();
        _isSwipe = false;
      }

      log(_pageController.position.pixels.toString());
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
            body: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.media.length,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      imageUrl: widget.media[index].imageUrl,
                      fit: BoxFit.cover,
                      imageBuilder: (context, imageProvider) => PhotoView(
                        tightMode: true,
                        imageProvider: imageProvider,
                        filterQuality: FilterQuality.high,
                        gaplessPlayback: false,
                        basePosition: Alignment.center,
                        minScale: PhotoViewComputedScale.contained,
                        customSize: MediaQuery.of(context).size,
                        backgroundDecoration: const BoxDecoration(
                          color: BlindChickenColors.backgroundColor,
                        ),
                      ),
                      width: MediaQuery.of(context).orientation == Orientation.portrait
                          ? width
                          : width / 2,
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    );
                  },
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Colors.transparent,
                  child: SafeArea(
                    child: SizedBox(
                      height: 38,
                      width: 38,
                      child: InkWell(
                        onTap: () {
                          widget.goBotton();
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
