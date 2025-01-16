import 'package:blind_chicken/core/utils/logging.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:zoom_widget/zoom_widget.dart';

class CatalogPreviewSliderImages extends StatefulWidget {
  const CatalogPreviewSliderImages({
    super.key,
    required this.listImages,
    required this.goSwipeBack,
  });

  final List<String> listImages;
  final VoidCallback goSwipeBack;
  @override
  State<CatalogPreviewSliderImages> createState() => _CatalogPreviewSliderImagesState();
}

class _CatalogPreviewSliderImagesState extends State<CatalogPreviewSliderImages> {
  final ScrollController _scrollController = ScrollController();
  double _position = 0.0;
  bool _isSwipe = true;

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  _scrollListener() {
    setState(() {
      logging(_scrollController.position.pixels.toString(), stackTrace: StackTrace.current);
      if (_scrollController.position.pixels < -50 && _isSwipe) {
        widget.goSwipeBack();
        _isSwipe = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.listImages.length,
            controller: _scrollController,
            itemBuilder: (context, index) {
              _position = _scrollController.position.pixels;
              return SizedBox(
                width: width,
                height: MediaQuery.of(context).orientation == Orientation.portrait
                    ? height * 0.6
                    : height * 0.9,
                child: Zoom(
                  maxZoomWidth: MediaQuery.of(context).orientation == Orientation.portrait
                      ? width
                      : width * 0.4,
                  maxZoomHeight: MediaQuery.of(context).orientation == Orientation.portrait
                      ? height * 0.6
                      : height,
                  canvasColor: BlindChickenColors.backgroundColorItemFilter,
                  backgroundColor: BlindChickenColors.backgroundColor,
                  colorScrollBars: Colors.white,
                  opacityScrollBars: 0.9,
                  scrollWeight: 0,
                  centerOnScale: true,
                  enableScroll: true,
                  doubleTapZoom: true,
                  zoomSensibility: 1,
                  child: CachedNetworkImage(
                    imageUrl: 'https://slepayakurica.ru/${widget.listImages[index]}',
                    width:
                        MediaQuery.of(context).orientation == Orientation.portrait ? width : width,
                    height: height,
                    fit: BoxFit.cover,
                  ),
                ),
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
                  var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
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
    );
  }
}
