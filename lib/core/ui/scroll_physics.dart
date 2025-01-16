import 'package:flutter/material.dart';

class CustomScrollPhysics extends ScrollPhysics {
  const CustomScrollPhysics({super.parent});

  @override
  Simulation? createBallisticSimulation(ScrollMetrics position, double velocity) {
    final tolerance = toleranceFor(position);
    if ((velocity.abs() < tolerance.velocity) ||
        (velocity > 0.0 && position.pixels >= position.maxScrollExtent) ||
        (velocity < 0.0 && position.pixels <= position.minScrollExtent)) {
      return null;
    }
    return ClampingScrollSimulation(
      position: position.pixels,
      velocity: velocity,
      friction: 0.2, // <--- HERE
      tolerance: tolerance,
    );
  }
}
