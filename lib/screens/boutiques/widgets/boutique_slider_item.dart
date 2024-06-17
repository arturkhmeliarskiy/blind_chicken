import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BoutiqueSliderItem extends StatefulWidget {
  const BoutiqueSliderItem({
    super.key,
    required this.url,
    this.isPreView = false,
    this.isFullScreen = false,
  });

  final String url;
  final bool isPreView;
  final bool isFullScreen;

  @override
  State<BoutiqueSliderItem> createState() => _BoutiqueSliderItemState();
}

class _BoutiqueSliderItemState extends State<BoutiqueSliderItem> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void didUpdateWidget(covariant BoutiqueSliderItem oldWidget) {
    setState(() {
      _controller.play();
    });

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: _controller.value.isInitialized
          ? widget.isPreView
              ? SizedBox(
                  width: width,
                  height: MediaQuery.of(context).orientation == Orientation.portrait ? 295 : null,
                  child: VideoPlayer(
                    _controller,
                  ),
                )
              : VideoPlayer(
                  _controller,
                )
          : Center(
              child: CircularProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.grey.shade400,
              ),
            ),
    );
  }
}
