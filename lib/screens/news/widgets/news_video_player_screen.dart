import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/news/widgets/news_video_player.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class NewsVideoPlayerScreen extends StatelessWidget {
  const NewsVideoPlayerScreen({
    super.key,
    required this.goBack,
    required this.aspectRatio,
    required this.item,
  });

  final VoidCallback goBack;
  final double aspectRatio;
  final NewsInfoItemDataModel item;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: BlindChickenColors.activeBorderTextField,
        body: NewsVideoPlayer(
          url: item.video,
          image: item.videoImage,
          isFullScreenVideo: true,
          onEnterFullScreen: (aspectRatio) {},
          aspectRatio: aspectRatio,
          onExitFullScreen: () {
            goBack();
          },
        ),
      ),
    );
  }
}
