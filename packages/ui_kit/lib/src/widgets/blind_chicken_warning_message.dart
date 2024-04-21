import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BlindChickenMessage {
  static final BlindChickenMessage _singleton = BlindChickenMessage._internal();
  factory BlindChickenMessage() => _singleton;
  BlindChickenMessage._internal();

  static OverlayState? _overlayState;
  bool _isVisible = false;

  DateTime lastTime = DateTime.now();

  late OverlayEntry _overlayEntry;

  void showOverlay(
    BuildContext context,
    String title,
    VoidCallback onTap,
  ) {
    final width = MediaQuery.of(context).size.width;
    if (_isVisible) {
      _overlayEntry.remove();
      _isVisible = false;
    }

    if (!_isVisible) {
      _overlayState = Overlay.of(context);

      _overlayEntry = OverlayEntry(
        builder: (context) => Message(
          width: width,
          title: title,
          tap: () {
            _isVisible = false;
            _overlayEntry.remove();
            onTap();
          },
        ),
      );
      _overlayState?.insert(_overlayEntry);
      _isVisible = true;
      lastTime = DateTime.now();
      Future<void>.delayed(const Duration(seconds: 3)).then((value) {
        final timeDifference = DateTime.now().difference(lastTime).inMilliseconds;
        if (_isVisible && timeDifference > (2990)) {
          _overlayEntry.remove();
          _isVisible = false;
        }
      });
    }
  }
}

class Message extends StatefulWidget {
  final double width;
  final String title;
  final void Function() tap;

  const Message({
    required this.width,
    required this.title,
    required this.tap,
    Key? key,
  }) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> with SingleTickerProviderStateMixin {
  late Animation<double> _position;
  late AnimationController _controller;
  late CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 900),
      vsync: this,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.ease);
    _position = Tween<double>(begin: -(widget.width * .3), end: widget.width * .15).animate(_curve);
    _controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    _curve.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Positioned(
      left: widget.width * .1,
      right: widget.width * .1,
      top: _position.value,
      child: GestureDetector(
        onTap: () {
          widget.tap();
        },
        child: Dismissible(
          key: const Key(''),
          onDismissed: (_) {
            widget.tap();
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
              right: 10,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: BlindChickenColors.borderInput,
                  offset: Offset(0, 5),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
