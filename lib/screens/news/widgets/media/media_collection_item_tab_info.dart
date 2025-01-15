import 'package:blind_chicken/screens/news/widgets/media/media_item_tab_info.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

class MediaCollectionItemTabInfo extends StatelessWidget {
  const MediaCollectionItemTabInfo({
    super.key,
    required this.listMedia,
  });

  final List<MediaInfoItemDataModel> listMedia;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaItemTabInfo(
          gridType: MediaGridType.first,
          listMedia: listMedia,
        ),
        if (listMedia.length > 5)
          MediaItemTabInfo(
            gridType: MediaGridType.second,
            listMedia: listMedia.sublist(5),
          ),
        if (listMedia.length > 8)
          MediaItemTabInfo(
            gridType: MediaGridType.third,
            listMedia: listMedia.sublist(8),
          ),
        if (listMedia.length > 13)
          MediaItemTabInfo(
            gridType: MediaGridType.fourth,
            listMedia: listMedia.sublist(13),
          ),
      ],
    );
  }
}
