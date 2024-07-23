import 'package:blind_chicken/screens/news/widgets/media/media_collection_item_tab_info.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

class MediaTabInfo extends StatefulWidget {
  const MediaTabInfo({
    super.key,
    required this.goBack,
  });

  final VoidCallback goBack;

  @override
  State<MediaTabInfo> createState() => _MediaTabInfoState();
}

class _MediaTabInfoState extends State<MediaTabInfo> {
  final ScrollController _scrollController = ScrollController();
  double _historyPosition = 0.0;
  double _paginationPosition = 0.0;
  bool _isButtonTop = false;

  @override
  void initState() {
    context.read<NewsBloc>().add(const NewsEvent.getMedia());
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        _isButtonTop = true;
      });
    } else {
      setState(() {
        _isButtonTop = false;
      });
    }
    if (_scrollController.position.pixels > (_scrollController.position.maxScrollExtent - 500) &&
        (_scrollController.position.maxScrollExtent - 500) > _paginationPosition &&
        _scrollController.position.pixels != _scrollController.position.maxScrollExtent) {
      setState(() {
        _paginationPosition = _scrollController.position.maxScrollExtent - 500;
      });
      context.read<NewsBloc>().add(const NewsEvent.paginationMedia());
    }
    _historyPosition = _scrollController.position.pixels;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.velocity.pixelsPerSecond.dx > 0) {
          widget.goBack();
        }
      },
      child: Stack(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
                return state.maybeMap(
                  preloadDataCompleted: (initState) {
                    if (initState.offsetMedia == 1) {
                      _paginationPosition = 0;
                    }
                    List<List<MediaInfoItemDataModel>> listMedia = [];
                    int chunkSize = 15;
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
                    if (listMedia.isNotEmpty) {
                      return ListView.builder(
                          controller: _scrollController,
                          itemCount: listMedia.length,
                          itemBuilder: (context, index) {
                            return MediaCollectionItemTabInfo(
                              listMedia: listMedia[index],
                            );
                          });
                    } else {
                      return LayoutBuilder(builder: (context, constraint) {
                        return Container(
                          height: constraint.maxHeight,
                          width: constraint.maxWidth,
                          alignment: Alignment.center,
                          color: Colors.transparent,
                          child: Text(
                            'Нет медиа',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        );
                      });
                    }
                  },
                  orElse: () => const SizedBox(),
                );
              }),
              if (_isButtonTop)
                GestureDetector(
                  onTap: () {
                    _scrollController.jumpTo(0.0);
                    setState(() {
                      _isButtonTop = false;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    margin: const EdgeInsets.only(left: 15, bottom: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: BlindChickenColors.activeBorderTextField,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/chevron-top.svg',
                    ),
                  ),
                )
              else
                const SizedBox()
            ],
          ),
          BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
            return state.maybeMap(
              load: (value) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    backgroundColor: Colors.grey.shade400,
                  ),
                );
              },
              orElse: () => const SizedBox(),
            );
          }),
        ],
      ),
    );
  }
}
