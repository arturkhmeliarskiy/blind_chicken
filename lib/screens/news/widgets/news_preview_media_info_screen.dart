import 'package:blind_chicken/app/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/loaders/circular_holder.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/screen_wrapper.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
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
    return ScreenWrapper(
      backgroundColor: AppColors.darkText,
      child: GestureDetector(
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
            Align(alignment: Alignment.topRight, child: buildBody()),
            Align(alignment: Alignment.topRight, child: buildCloseIcon()),
            Align(alignment: Alignment.centerLeft, child: buildLeftChevronIcon()),
            Align(alignment: Alignment.centerRight, child: buildRightChevronIcon()),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    //backgroundColor: _page < widget.videos.length ? BlindChickenColors.activeBorderTextField : null,
    return NewsPhotoAndVideoViewGallery.builder(
      onPageChanged: (index) {
        setState(() {
          _page = index;
        });
      },
      scrollPhysics: const BouncingScrollPhysics(),
      builder: (BuildContext context, int index) {
        return NewsPhotoAndVideoViewGalleryPageOptions(
          imageProvider: widget.videos.length - 1 < index ? NetworkImage(widget.images[index - 1]) : NetworkImage(''),
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
        child: CircularHolder(),
      ),
      backgroundDecoration: BoxDecoration(
        color: AppColors.darkText,
      ),
      pageController: _pageController,
    );
  }

  Column buildCloseIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40,
            width: 40,
            child: InkWell(
              onTap: () {
                widget.goBotton();
                setState(() {
                  _isSwipe = false;
                });
              },
              child: Container(
                height: 38.5,
                width: 38.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: BlindChickenColors.backgroundColor.withOpacity(0.3),
                ),
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  Assets.icons.x,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLeftChevronIcon() {
    if (_pageController.hasClients == false) return SizedBox();
    if (_pageController.page?.toInt() == 0) return SizedBox();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40,
            width: 40,
            child: InkWell(
              onTap: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
                setState(() {});
              },
              child: Container(
                height: 38.5,
                width: 38.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: BlindChickenColors.backgroundColor.withOpacity(0.3),
                ),
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  Assets.icons.chevronLeft,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildRightChevronIcon() {
    if (_pageController.hasClients == false) return buildRightChevron();
    if (_pageController.page?.toInt() == (widget.images.length + widget.videos.length) - 1) return SizedBox();
    return buildRightChevron();
  }

  Column buildRightChevron() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40,
            width: 40,
            child: InkWell(
              onTap: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
                setState(() {});
              },
              child: Container(
                height: 38.5,
                width: 38.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: BlindChickenColors.backgroundColor.withOpacity(0.3),
                ),
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  Assets.icons.chevronRight,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
