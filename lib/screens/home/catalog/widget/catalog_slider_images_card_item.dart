import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class CatalogSliderImagesCardItem extends StatefulWidget {
  const CatalogSliderImagesCardItem({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  State<CatalogSliderImagesCardItem> createState() => _CatalogSliderImagesCardItemState();
}

class _CatalogSliderImagesCardItemState extends State<CatalogSliderImagesCardItem> {
  final PageController _pageController = PageController();
  int _page = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 21,
      height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.images.length,
            onPageChanged: (value) {
              setState(() {
                _page = value;
              });
            },
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: widget.images[index],
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width / 2 - 21,
                height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                placeholder: (context, url) => SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 21,
                  height: (MediaQuery.of(context).size.width / 2 - 21) * 4 / 3,
                  child: const LoadingImage(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              );
            },
          ),
          if (widget.images.length > 1)
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: SizedBox(
                height: 12,
                width: widget.images.length * 9,
                child: Row(
                  children: List.generate(widget.images.length, (index) {
                    return Container(
                      height: 2,
                      width: 6,
                      margin: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        color: _page == index
                            ? BlindChickenColors.backgroundColor
                            : BlindChickenColors.borderSwitchCard,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
                ),
              ),
            )
        ],
      ),
    );
  }
}
