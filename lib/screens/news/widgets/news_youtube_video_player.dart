import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NewsYouTubeVideoPlayer extends StatefulWidget {
  const NewsYouTubeVideoPlayer({
    super.key,
    required this.url,
    this.isAutoPlay = false,
    this.isTapVideoFullScreen = false,
    required this.onEnterFullScreen,
    required this.onExitFullScreen,
  });

  final String url;
  final bool isAutoPlay;
  final bool isTapVideoFullScreen;
  final VoidCallback onEnterFullScreen;
  final VoidCallback onExitFullScreen;

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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isTapVideoFullScreen ? widget.onEnterFullScreen : null,
      child: ClipRRect(
        borderRadius: !widget.isTapVideoFullScreen
            ? BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )
            : BorderRadius.zero,
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
      ),
    );
  }
}
