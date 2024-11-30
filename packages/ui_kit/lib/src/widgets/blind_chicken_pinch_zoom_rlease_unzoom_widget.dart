import 'package:flutter/material.dart';

class BlindChickenPinchZoomReleaseUnzoomWidget extends StatefulWidget {
  static const Duration defaultResetDuration = Duration(milliseconds: 200);

  const BlindChickenPinchZoomReleaseUnzoomWidget({
    required this.child,
    this.zoomChild,
    this.resetDuration = defaultResetDuration,
    this.resetCurve = Curves.ease,
    this.boundaryMargin = EdgeInsets.zero,
    this.clipBehavior = Clip.none,
    this.minScale = 0.8,
    this.maxScale = 8,
    this.useOverlay = true,
    this.rootOverlay = false,
    this.maxOverlayOpacity = 0.5,
    this.overlayColor = Colors.black,
    this.fingersRequiredToPinch = 2,
    this.twoFingersOn,
    this.twoFingersOff,
    this.log = false,
    super.key,
  })  : assert(minScale > 0),
        assert(maxScale > 0),
        assert(maxScale >= minScale);

  final Widget child;

  final Widget? zoomChild;

  final Clip clipBehavior;

  final double maxScale;

  final double minScale;

  final Duration resetDuration;

  final Curve resetCurve;

  final EdgeInsets boundaryMargin;

  final bool useOverlay;

  final bool rootOverlay;

  final double maxOverlayOpacity;

  final Color overlayColor;

  final int fingersRequiredToPinch;

  final void Function()? twoFingersOn;

  final void Function()? twoFingersOff;

  final bool log;

  @override
  State<BlindChickenPinchZoomReleaseUnzoomWidget> createState() =>
      _BlindChickenPinchZoomReleaseUnzoomWidgetState();
}

class _BlindChickenPinchZoomReleaseUnzoomWidgetState
    extends State<BlindChickenPinchZoomReleaseUnzoomWidget> with TickerProviderStateMixin {
  late TransformationController transformationController;

  late AnimationController animationController;
  Animation<Matrix4>? animation;

  OverlayEntry? entry;

  List<OverlayEntry> overlayEntries = [];

  double scale = 1;

  final List<int> events = [];

  @override
  void initState() {
    super.initState();
    PinchZoomLogger().logFlag = widget.log;

    transformationController = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: widget.resetDuration,
    )
      ..addListener(
        () => transformationController.value = animation!.value,
      )
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed && widget.useOverlay) {
            Future.delayed(const Duration(milliseconds: 100), removeOverlay);
          }
        },
      );
  }

  @override
  void dispose() {
    transformationController.dispose();
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => buildWidget(widget.child);

  void resetAnimation() {
    if (mounted) {
      animation = Matrix4Tween(begin: transformationController.value, end: Matrix4.identity())
          .animate(CurvedAnimation(parent: animationController, curve: widget.resetCurve));
      animationController.forward(from: 0);
    }
  }

  Widget buildWidget(Widget zoomableWidget) => Builder(
        builder: (context) => Listener(
          onPointerDown: (PointerEvent event) {
            events.add(event.pointer);
            final int pointers = events.length;
            PinchZoomLogger().log('added new pointer. Total: $pointers');

            if (pointers >= 2 && widget.twoFingersOn != null) {
              PinchZoomLogger().log('two fingers on. Parent widget should block scroll');
              widget.twoFingersOn!.call();
            }
          },
          onPointerUp: (event) {
            events.clear();
            PinchZoomLogger().log('removed pointer. Total: 0');

            if (widget.twoFingersOff != null) {
              PinchZoomLogger().log('two fingers off. Parent widget should unblock scroll');
              widget.twoFingersOff!.call();
            }
          },
          child: InteractiveViewer(
            clipBehavior: widget.clipBehavior,
            minScale: widget.minScale,
            maxScale: widget.maxScale,
            transformationController: transformationController,
            onInteractionStart: (details) {
              if (widget.fingersRequiredToPinch > 0 &&
                  details.pointerCount != widget.fingersRequiredToPinch) {
                PinchZoomLogger().log('avoided start with ${details.pointerCount} fingers');
                return;
              }
              if (widget.useOverlay) {
                PinchZoomLogger().log('started interaction. Show overlay');
                showOverlay(context);
              }
            },
            onInteractionEnd: (details) {
              PinchZoomLogger().log('stopped interaction. Hide overlay');
              if (overlayEntries.isEmpty) {
                return;
              }

              resetAnimation();
            },
            onInteractionUpdate: (details) {
              if (entry == null) {
                return;
              }

              scale = details.scale;
              entry?.markNeedsBuild();
            },
            panEnabled: false,
            boundaryMargin: widget.boundaryMargin,
            child: zoomableWidget,
          ),
        ),
      );

  void showOverlay(BuildContext context) {
    PinchZoomLogger().log('Show overlay. Count before: ${overlayEntries.length}');
    final OverlayState overlay = Overlay.of(
      context,
      rootOverlay: widget.rootOverlay,
    );
    final RenderBox renderBox = context.findRenderObject()! as RenderBox;
    final Offset offset = renderBox.localToGlobal(
      Offset.zero,
      ancestor: overlay.context.findRenderObject(),
    );

    entry = OverlayEntry(builder: (context) {
      final double opacity =
          ((scale - 1) / (widget.maxScale - 1)).clamp(0, widget.maxOverlayOpacity);

      return Material(
        color: Colors.green.withOpacity(0),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: opacity,
                child: Container(color: widget.overlayColor),
              ),
            ),
            Positioned(
              left: offset.dx,
              top: offset.dy,
              child: SizedBox(
                width: renderBox.size.width,
                height: renderBox.size.height,
                child: buildWidget(widget.zoomChild ?? widget.child),
              ),
            ),
          ],
        ),
      );
    });
    overlay.insert(entry!);

    overlayEntries.add(entry!);
  }

  void removeOverlay() {
    PinchZoomLogger().log('remove overlay. Count: ${overlayEntries.length}');
    for (final OverlayEntry entry in overlayEntries) {
      entry.remove();
    }
    overlayEntries.clear();
    entry = null;
  }
}

class PinchZoomLogger {
  static final PinchZoomLogger _singleton = PinchZoomLogger._internal();

  factory PinchZoomLogger() => _singleton;

  PinchZoomLogger._internal();

  bool logFlag = false;

  void log(String message) {
    if (logFlag) {
      debugPrint(message);
    }
  }
}
