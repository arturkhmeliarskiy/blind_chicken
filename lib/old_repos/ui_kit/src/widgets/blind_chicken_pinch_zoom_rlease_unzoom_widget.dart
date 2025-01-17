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
            PinchZoomLogger().logging('added new pointer. Total: $pointers', stackTrace: StackTrace.current);

            if (pointers >= 2 && widget.twoFingersOn != null) {
              PinchZoomLogger().logging('two fingers on. Parent widget should block scroll', stackTrace: StackTrace.current);
              widget.twoFingersOn!.call();
            }
          },
          onPointerUp: (event) {
            events.clear();
            PinchZoomLogger().logging('removed pointer. Total: 0', stackTrace: StackTrace.current);

            if (widget.twoFingersOff != null) {
              PinchZoomLogger().logging('two fingers off. Parent widget should unblock scroll', stackTrace: StackTrace.current);
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
                PinchZoomLogger().logging('avoided start with ${details.pointerCount} fingers', stackTrace: StackTrace.current);
                return;
              }
              if (widget.useOverlay) {
                PinchZoomLogger().logging('started interaction. Show overlay', stackTrace: StackTrace.current);
                showOverlay(context);
              }
            },
            onInteractionEnd: (details) {
              PinchZoomLogger().logging('stopped interaction. Hide overlay', stackTrace: StackTrace.current);
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
    PinchZoomLogger().logging('Show overlay. Count before: ${overlayEntries.length}', stackTrace: StackTrace.current);
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
    PinchZoomLogger().logging('remove overlay. Count: ${overlayEntries.length}', stackTrace: StackTrace.current);
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

  void logging(String message, {StackTrace? stackTrace}) {
    if (logFlag) {
      debugPrint(message);
    }
  }
}
