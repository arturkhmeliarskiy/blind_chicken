import 'package:blind_chicken/screens/news/widgets/media/media_collection_item_tab_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

class MediaTabInfo extends StatefulWidget {
  const MediaTabInfo({super.key});

  @override
  State<MediaTabInfo> createState() => _MediaTabInfoState();
}

class _MediaTabInfoState extends State<MediaTabInfo> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
      return state.maybeMap(
        preloadDataCompleted: (initState) {
          List<List<MediaInfoItemDataModel>> listMedia = [];
          int chunkSize = 16;
          for (var i = 0; i < initState.media.list.length; i += chunkSize) {
            listMedia.add(
              initState.media.list.sublist(
                i,
                i + chunkSize > initState.media.list.length
                    ? initState.media.list.length
                    : i + chunkSize,
              ),
            );
          }
          return ListView.builder(
              itemCount: listMedia.length,
              itemBuilder: (context, index) {
                return MediaCollectionItemTabInfo(
                  listMedia: listMedia[index],
                );
              });
        },
        orElse: () => const SizedBox(),
      );
    });
  }
}
