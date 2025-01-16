import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:flutter/material.dart';

class LifeCycleManager extends StatefulWidget {
  final VoidCallback? inactive;
  final VoidCallback? paused;
  final VoidCallback? detached;
  final VoidCallback? resumed;
  final Widget child;

  const LifeCycleManager({
    required this.child,
    this.inactive,
    this.paused,
    this.detached,
    this.resumed,
    super.key,
  });

  @override
  LifeCycleManagerState createState() => LifeCycleManagerState();
}

class LifeCycleManagerState extends State<LifeCycleManager>
    with
        // ignore: prefer_mixin
        WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.inactive:
        widget.inactive?.call();
        logging('appLifeCycleState inactive', stackTrace: StackTrace.current);
        break;
      case AppLifecycleState.resumed:
        widget.resumed?.call();
        logging('appLifeCycleState resumed', stackTrace: StackTrace.current);
        break;
      case AppLifecycleState.paused:
        widget.paused?.call();
        logging('appLifeCycleState paused', stackTrace: StackTrace.current);
        break;
      case AppLifecycleState.detached:
        widget.detached?.call();
        logging('appLifeCycleState detached', stackTrace: StackTrace.current);
        break;
      case AppLifecycleState.hidden:
      // TODO: Handle this case.
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
