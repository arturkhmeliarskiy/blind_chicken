import 'package:blind_chicken/core/utils/logging.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/boutiques/widgets/boutique_slider_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:photo_view/photo_view.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class BoutiquePreviewMediaScreen extends StatefulWidget {
  const BoutiquePreviewMediaScreen({
    super.key,
    required this.media,
    required this.goBotton,
    required this.selectIndex,
    required this.listImages,
  });

  final List<String> media;
  final List<BoutiqueFotoDetailDataModel> listImages;
  final VoidCallback goBotton;
  final int selectIndex;

  @override
  State<BoutiquePreviewMediaScreen> createState() => _BoutiquePreviewMediaScreenState();
}

class _BoutiquePreviewMediaScreenState extends State<BoutiquePreviewMediaScreen> {
  PageController _pageController = PageController();
  int _page = 0;
  bool _isSwipe = true;
  bool _isFullScreen = false;

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
      if (_pageController.page != null) {
        _page = _pageController.page?.toInt() ?? 0;
      }
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
                    return FileService.getUrlType(widget.media[index]) != UrlType.video
                        ? CachedNetworkImage(
                            imageUrl: 'https://slepayakurica.ru${widget.media[index]}',
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
                          )
                        : BoutiqueSliderItem(
                            isPreView: true,
                            url: 'https://slepayakurica.ru${widget.media[index]}',
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
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: BlindChickenColors.backgroundColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: const EdgeInsets.only(
                        top: 10.5,
                        right: 10.5,
                      ),
                      child: InkWell(
                        onTap: widget.goBotton,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(6),
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
              if (FileService.getUrlType(widget.media[_page]) == UrlType.video)
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Material(
                    color: Colors.transparent,
                    child: SafeArea(
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          color: BlindChickenColors.backgroundColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        margin: const EdgeInsets.only(
                          bottom: 10.5,
                          left: 10.5,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _isFullScreen = !_isFullScreen;
                              if (_isFullScreen) {
                                SystemChrome.setPreferredOrientations(
                                    [DeviceOrientation.landscapeRight]);
                              } else {
                                SystemChrome.setPreferredOrientations(
                                    [DeviceOrientation.portraitUp]);
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Icon(
                              _isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
                              size: 30,
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
