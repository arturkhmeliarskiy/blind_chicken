import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NewsYouTubeVideoPlayer extends StatefulWidget {
  const NewsYouTubeVideoPlayer({
    super.key,
    required this.url,
    this.isAutoPlay = false,
    this.isTapVideoFullScreen = false,
    this.isDisabledVideo = false,
    required this.onEnterFullScreen,
    required this.onExitFullScreen,
  });

  final String url;
  final bool isAutoPlay;
  final bool isTapVideoFullScreen;
  final VoidCallback onEnterFullScreen;
  final VoidCallback onExitFullScreen;
  final bool isDisabledVideo;

  @override
  NewsYouTubeVideoPlayerState createState() => NewsYouTubeVideoPlayerState();
}

class NewsYouTubeVideoPlayerState extends State<NewsYouTubeVideoPlayer> {
  String videoId = '';
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '',
  );

  @override
  void initState() {
    videoId = YoutubePlayer.convertUrlToId(widget.url) ?? '';
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: widget.isAutoPlay,
      ),
    );
    if (widget.isTapVideoFullScreen) {
      _controller.setVolume(0);
    }

    super.initState();
  }

  @override
  void didUpdateWidget(covariant NewsYouTubeVideoPlayer oldWidget) {
    if (widget.isDisabledVideo) {
      _controller.dispose();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isTapVideoFullScreen ? widget.onEnterFullScreen : null,
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        onEnterFullScreen: widget.onEnterFullScreen,
        onExitFullScreen: widget.onExitFullScreen,
        builder: (context, player) {
          return Column(
            children: [
              // some widgets
              player,
              //some other widgets
            ],
          );
        },
      ),
    );
  }
}
