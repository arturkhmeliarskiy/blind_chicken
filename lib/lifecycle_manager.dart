import 'dart:developer';

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
    Key? key,
  }) : super(key: key);

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager>
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
        log('appLifeCycleState inactive');
        break;
      case AppLifecycleState.resumed:
        widget.resumed?.call();
        log('appLifeCycleState resumed');
        break;
      case AppLifecycleState.paused:
        widget.paused?.call();
        log('appLifeCycleState paused');
        break;
      case AppLifecycleState.detached:
        widget.detached?.call();
        log('appLifeCycleState detached');
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
