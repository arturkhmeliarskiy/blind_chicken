import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class NewsPreviewMediaInfoScreen extends StatefulWidget {
  const NewsPreviewMediaInfoScreen({
    super.key,
    required this.images,
    required this.videos,
    required this.goBotton,
    required this.selectedIndex,
  });

  final List<String> images;
  final List<String> videos;
  final VoidCallback goBotton;
  final int selectedIndex;

  @override
  State<NewsPreviewMediaInfoScreen> createState() => _NewsPreviewMediaScreenState();
}

class _NewsPreviewMediaScreenState extends State<NewsPreviewMediaInfoScreen> {
  final PageController _pageController = PageController();
  bool _isSwipe = true;
  int _page = 0;

  @override
  void initState() {
    _pageController.addListener(_scrollListenerList);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (widget.selectedIndex > 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _pageController.jumpToPage(widget.selectedIndex);
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

      logging(_pageController.position.pixels.toString(), stackTrace: StackTrace.current);
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
            backgroundColor:
                _page < widget.videos.length ? BlindChickenColors.activeBorderTextField : null,
            body: Center(
              child: NewsPhotoAndVideoViewGallery.builder(
                onPageChanged: (index) {
                  setState(() {
                    _page = index;
                  });
                },
                scrollPhysics: const BouncingScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return NewsPhotoAndVideoViewGalleryPageOptions(
                    imageProvider: widget.videos.length - 1 < index
                        ? NetworkImage(widget.images[index - 1])
                        : NetworkImage(''),
                    initialScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.contained * 5,
                    minScale: PhotoViewComputedScale.contained,
                    heroAttributes: PhotoViewHeroAttributes(tag: index),
                    onExitFullScreen: () {
                      widget.goBotton();
                      setState(() {
                        _isSwipe = false;
                      });
                    },
                  );
                },
                videos: widget.videos,
                itemCount: widget.images.length + widget.videos.length,
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
                            top: 15,
                            right: 15,
                          ),
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset(
                            'assets/icons/x.svg',
                            height: 28,
                            width: 28,
                            color: _page < widget.videos.length
                                ? BlindChickenColors.backgroundColor
                                : null,
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
