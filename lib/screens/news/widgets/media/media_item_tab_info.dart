import 'package:blind_chicken/screens/news/widgets/news/news_video_player_description_info.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class MediaItemTabInfo extends StatelessWidget {
  const MediaItemTabInfo({
    super.key,
    required this.gridType,
    required this.listMedia,
  });

  final MediaGridType gridType;
  final List<MediaInfoItemDataModel> listMedia;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    switch (gridType) {
      case MediaGridType.first:
        return _firstGrid(
          width,
          listMedia,
        );

      case MediaGridType.second:
        return _secondGrid(
          width,
          listMedia,
        );

      case MediaGridType.third:
        return _thirdGrid(
          width,
          listMedia,
        );

      case MediaGridType.fourth:
        return _fourthGrid(
          width,
          listMedia,
        );
    }
  }
}

Widget _firstGrid(
  double width,
  List<MediaInfoItemDataModel> listMedia,
) {
  return SizedBox(
    height: width * 2 / 3,
    child: Row(
      children: [
        _itemMediaSize(
          images: listMedia[0].images,
          video: listMedia[0].video,
          type: listMedia[0].typeMedia,
          width: width * 1 / 3,
          height: width * 2 / 3,
        ),
        if (listMedia.length > 1)
          SizedBox(
            width: width * 2 / 3,
            height: width * 2 / 3,
            child: Wrap(
              children: <Widget>[
                if (listMedia.length > 1)
                  _itemMediaSize(
                    images: listMedia[1].images,
                    video: listMedia[1].video,
                    type: listMedia[1].typeMedia,
                    width: (width * 2 / 3) / 2,
                    height: (width * 2 / 3) / 2,
                  ),
                if (listMedia.length > 2)
                  _itemMediaSize(
                    images: listMedia[2].images,
                    video: listMedia[2].video,
                    type: listMedia[2].typeMedia,
                    width: (width * 2 / 3) / 2,
                    height: (width * 2 / 3) / 2,
                  ),
                if (listMedia.length > 3)
                  _itemMediaSize(
                    images: listMedia[3].images,
                    video: listMedia[3].video,
                    type: listMedia[3].typeMedia,
                    width: (width * 2 / 3) / 2,
                    height: (width * 2 / 3) / 2,
                  ),
                if (listMedia.length > 4)
                  _itemMediaSize(
                    images: listMedia[4].images,
                    video: listMedia[4].video,
                    type: listMedia[4].typeMedia,
                    width: (width * 2 / 3) / 2,
                    height: (width * 2 / 3) / 2,
                  ),
              ],
            ),
          ),
      ],
    ),
  );
}

Widget _secondGrid(
  double width,
  List<MediaInfoItemDataModel> listMedia,
) {
  return SizedBox(
    height: width * 2 / 3,
    child: Row(
      children: [
        SizedBox(
          width: width * 1 / 3,
          height: width * 2 / 3,
          child: Column(
            children: [
              Expanded(
                child: _itemMediaExpandex(
                  images: listMedia[0].images,
                  video: listMedia[0].video,
                  type: listMedia[0].typeMedia,
                ),
              ),
              if (listMedia.length > 1)
                Expanded(
                  child: _itemMediaExpandex(
                    images: listMedia[1].images,
                    video: listMedia[1].video,
                    type: listMedia[1].typeMedia,
                  ),
                )
              else
                const Expanded(
                  child: SizedBox(),
                ),
            ],
          ),
        ),
        if (listMedia.length > 2)
          _itemMediaSize(
            images: listMedia[2].images,
            video: listMedia[2].video,
            type: listMedia[2].typeMedia,
            width: width * 2 / 3,
            height: width * 2 / 3,
          )
        else
          const SizedBox(),
      ],
    ),
  );
}

Widget _thirdGrid(
  double width,
  List<MediaInfoItemDataModel> listMedia,
) {
  return SizedBox(
    height: width * 2 / 3,
    child: Row(
      children: [
        SizedBox(
          width: width * 2 / 3,
          height: width * 2 / 3,
          child: Wrap(
            children: <Widget>[
              _itemMediaSize(
                images: listMedia[0].images,
                video: listMedia[0].video,
                type: listMedia[0].typeMedia,
                height: width * 2 / 3 / 2,
                width: width * 2 / 3 / 2,
              ),
              if (listMedia.length > 1)
                _itemMediaSize(
                  images: listMedia[1].images,
                  video: listMedia[1].video,
                  type: listMedia[1].typeMedia,
                  height: width * 2 / 3 / 2,
                  width: width * 2 / 3 / 2,
                ),
              if (listMedia.length > 2)
                _itemMediaSize(
                  images: listMedia[2].images,
                  video: listMedia[2].video,
                  type: listMedia[2].typeMedia,
                  height: width * 2 / 3 / 2,
                  width: width * 2 / 3 / 2,
                ),
              if (listMedia.length > 3)
                _itemMediaSize(
                  images: listMedia[3].images,
                  video: listMedia[3].video,
                  type: listMedia[3].typeMedia,
                  height: width * 2 / 3 / 2,
                  width: width * 2 / 3 / 2,
                ),
            ],
          ),
        ),
        if (listMedia.length > 4)
          _itemMediaSize(
            images: listMedia[4].images,
            video: listMedia[4].video,
            type: listMedia[4].typeMedia,
            width: width * 1 / 3,
            height: width * 2 / 3,
          ),
      ],
    ),
  );
}

Widget _fourthGrid(
  double width,
  List<MediaInfoItemDataModel> listMedia,
) {
  return SizedBox(
    height: width * 2 / 3,
    child: Row(
      children: [
        _itemMediaSize(
          images: listMedia[0].images,
          video: listMedia[0].video,
          type: listMedia[0].typeMedia,
          width: width * 2 / 3,
          height: width * 2 / 3,
        ),
        SizedBox(
          width: width * 1 / 3,
          child: Column(
            children: [
              if (listMedia.length > 1)
                Expanded(
                  child: _itemMediaExpandex(
                    images: listMedia[1].images,
                    video: listMedia[1].video,
                    type: listMedia[1].typeMedia,
                  ),
                ),
              if (listMedia.length > 2)
                Expanded(
                  child: _itemMediaExpandex(
                    images: listMedia[2].images,
                    video: listMedia[2].video,
                    type: listMedia[2].typeMedia,
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _itemMediaSize({
  required List<String> images,
  required String video,
  required String type,
  required double height,
  required double width,
}) {
  return LayoutBuilder(builder: (context, constraints) {
    if (images.isNotEmpty || video.isNotEmpty) {
      if (type == 'image') {
        return SizedBox(
          width: width,
          child: CachedNetworkImage(
            imageUrl: images.first,
            width: width,
            height: height,
            fit: BoxFit.cover,
            placeholder: (context, url) => SizedBox(
              height: height,
              child: const LoadingImage(),
            ),
          ),
        );
      } else {
        return SizedBox(
          width: width,
          height: width,
          child: NewsVideoPlayerItemInfo(
            url: video,
          ),
        );
      }
    } else {
      return const SizedBox();
    }
  });
}

Widget _itemMediaExpandex({
  required List<String> images,
  required String video,
  required String type,
}) {
  return LayoutBuilder(builder: (context, constraints) {
    if (images.isNotEmpty || video.isNotEmpty) {
      if (type == 'image') {
        return CachedNetworkImage(
          imageUrl: images.first,
          fit: BoxFit.cover,
          placeholder: (context, url) => const LoadingImage(),
        );
      } else {
        return NewsVideoPlayerItemInfo(
          url: video,
        );
      }
    } else {
      return const SizedBox();
    }
  });
}
