import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/loaders/circular_holder.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/others/screen_wrapper.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';

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
  final PageController _pageController = PageController();
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
          children: [
            Align(alignment: Alignment.topRight, child: buildSlider()),
            Align(alignment: Alignment.topRight, child: buildCloseIcon()),
            Align(alignment: Alignment.centerLeft, child: buildLeftChevronIcon()),
            Align(alignment: Alignment.centerRight, child: buildRightChevronIcon()),
          ],
        ),
      ),
    );
  }

  Widget buildSlider() {
    return PhotoAndVideoViewGallery.builder(
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

  Column buildRightChevronIcon() {
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
