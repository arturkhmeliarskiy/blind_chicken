import 'package:blind_chicken/core/utils/logging.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class NewsPreviewMediaScreen extends StatefulWidget {
  const NewsPreviewMediaScreen({
    super.key,
    required this.media,
    required this.goBotton,
    required this.selectIndex,
  });

  final List<String> media;
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
            body: Center(
              child: PhotoAndVideoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return PhotoAndVideoViewGalleryPageOptions(
                    imageProvider: NetworkImage(widget.media[index]),
                    initialScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.contained * 5,
                    minScale: PhotoViewComputedScale.contained,
                    heroAttributes: PhotoViewHeroAttributes(tag: index),
                  );
                },
                itemCount: widget.media.length,
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
