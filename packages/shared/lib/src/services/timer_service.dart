import 'dart:async';

import 'package:flutter/material.dart';

class TimerService {
  Timer? _timer;

  Future<void> startTimer({
    int seconds = 0,
    int minutes = 0,
    required ValueChanged<Timer> chenged,
  }) async {
    _timer = Timer.periodic(
      Duration(
        minutes: minutes,
        seconds: seconds,
      ),
      chenged,
    );
  }

  Future<void> cancel() async {
    _timer?.cancel();
  }
}
