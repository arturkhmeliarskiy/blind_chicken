import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
          info: listMedia[0],
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
                    info: listMedia[1],
                    width: (width * 2 / 3) / 2,
                    height: (width * 2 / 3) / 2,
                  ),
                if (listMedia.length > 2)
                  _itemMediaSize(
                    info: listMedia[2],
                    width: (width * 2 / 3) / 2,
                    height: (width * 2 / 3) / 2,
                  ),
                if (listMedia.length > 3)
                  _itemMediaSize(
                    info: listMedia[3],
                    width: (width * 2 / 3) / 2,
                    height: (width * 2 / 3) / 2,
                  ),
                if (listMedia.length > 4)
                  _itemMediaSize(
                    info: listMedia[4],
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
                  info: listMedia[0],
                ),
              ),
              if (listMedia.length > 1)
                Expanded(
                  child: _itemMediaExpandex(
                    info: listMedia[1],
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
            info: listMedia[2],
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
                info: listMedia[0],
                height: width * 2 / 3 / 2,
                width: width * 2 / 3 / 2,
              ),
              if (listMedia.length > 1)
                _itemMediaSize(
                  info: listMedia[1],
                  height: width * 2 / 3 / 2,
                  width: width * 2 / 3 / 2,
                ),
              if (listMedia.length > 2)
                _itemMediaSize(
                  info: listMedia[2],
                  height: width * 2 / 3 / 2,
                  width: width * 2 / 3 / 2,
                ),
              if (listMedia.length > 3)
                _itemMediaSize(
                  info: listMedia[3],
                  height: width * 2 / 3 / 2,
                  width: width * 2 / 3 / 2,
                ),
            ],
          ),
        ),
        if (listMedia.length > 4)
          _itemMediaSize(
            info: listMedia[4],
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
          info: listMedia[0],
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
                    info: listMedia[1],
                  ),
                ),
              if (listMedia.length > 2)
                Expanded(
                  child: _itemMediaExpandex(
                    info: listMedia[2],
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
  required MediaInfoItemDataModel info,
  required double height,
  required double width,
}) {
  return LayoutBuilder(builder: (context, constraints) {
    if (info.images.isNotEmpty || info.video.isNotEmpty) {
      if (info.typeMedia == 'images') {
        return GestureDetector(
          onTap: () {
            context.navigateTo(
              MediaInfoDescriptionRoute(info: info),
            );
          },
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                width: width,
                child: CachedNetworkImage(
                  imageUrl: info.images.first,
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => SizedBox(
                    height: height,
                    child: const LoadingImage(),
                  ),
                ),
              ),
              if (info.images.length > 1)
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.filter,
                    color: Colors.white,
                    size: 14,
                  ),
                )
              else
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.image_outlined,
                    color: Colors.white,
                    size: 16,
                  ),
                )
            ],
          ),
        );
      } else {
        final videoId = YoutubePlayer.convertUrlToId(info.video) ?? '';
        return GestureDetector(
          onTap: () {
            context.navigateTo(
              MediaInfoDescriptionRoute(info: info),
            );
          },
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                width: width,
                child: CachedNetworkImage(
                  imageUrl: 'https://img.youtube.com/vi/$videoId/0.jpg',
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => SizedBox(
                    height: height,
                    child: const LoadingImage(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.videocam_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              )
            ],
          ),
        );
      }
    } else {
      return const SizedBox();
    }
  });
}

Widget _itemMediaExpandex({
  required MediaInfoItemDataModel info,
}) {
  return LayoutBuilder(builder: (context, constraints) {
    if (info.images.isNotEmpty || info.video.isNotEmpty) {
      if (info.typeMedia == 'images') {
        return GestureDetector(
          onTap: () {
            context.navigateTo(
              MediaInfoDescriptionRoute(info: info),
            );
          },
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CachedNetworkImage(
                imageUrl: info.images.first,
                fit: BoxFit.cover,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                placeholder: (context, url) => const LoadingImage(),
              ),
              if (info.images.length > 1)
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.filter,
                    color: Colors.white,
                    size: 14,
                  ),
                )
              else
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.image_outlined,
                    color: Colors.white,
                    size: 16,
                  ),
                )
            ],
          ),
        );
      } else {
        final videoId = YoutubePlayer.convertUrlToId(info.video) ?? '';
        return GestureDetector(
          onTap: () {
            context.navigateTo(
              MediaInfoDescriptionRoute(info: info),
            );
          },
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CachedNetworkImage(
                imageUrl: 'https://img.youtube.com/vi/$videoId/0.jpg',
                fit: BoxFit.cover,
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                placeholder: (context, url) => const LoadingImage(),
              ),
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.videocam_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              )
            ],
          ),
        );
      }
    } else {
      return const SizedBox();
    }
  });
}
