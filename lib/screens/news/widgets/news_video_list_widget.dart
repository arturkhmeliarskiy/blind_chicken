import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class NewsVideoListWidget extends StatefulWidget {
  const NewsVideoListWidget({
    super.key,
    required this.url,
    required this.onTap,
    this.aspectRatio = 1,
  });

  final String url;
  final double aspectRatio;
  final VoidCallback onTap;

  @override
  _NewsVideoListWidgetState createState() => _NewsVideoListWidgetState();
}

class _NewsVideoListWidgetState extends State<NewsVideoListWidget> {
  BetterPlayerConfiguration? betterPlayerConfiguration;
  BetterPlayerListVideoPlayerController? controller;

  @override
  void initState() {
    super.initState();
    controller = BetterPlayerListVideoPlayerController();
    betterPlayerConfiguration = BetterPlayerConfiguration(autoPlay: true);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AspectRatio(
        aspectRatio: widget.aspectRatio,
        child: BetterPlayerListVideoPlayer(
          BetterPlayerDataSource(
            BetterPlayerDataSourceType.network,
            widget.url,
            bufferingConfiguration: BetterPlayerBufferingConfiguration(
                minBufferMs: 2000,
                maxBufferMs: 10000,
                bufferForPlaybackMs: 1000,
                bufferForPlaybackAfterRebufferMs: 2000),
          ),
          configuration:
              BetterPlayerConfiguration(autoPlay: false, aspectRatio: 1, handleLifecycle: true),
          //key: Key(videoListData.hashCode.toString()),
          playFraction: 0.8,
          betterPlayerListVideoPlayerController: controller,
        ),
      ),
    );
  }
}
