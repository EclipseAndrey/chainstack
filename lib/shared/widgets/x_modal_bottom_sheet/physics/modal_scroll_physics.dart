import 'dart:math' as math;

import 'package:flutter/material.dart';

class ModalScrollPhysics extends ScrollPhysics {
  @override
  double get dragStartDistanceMotionThreshold => 3.5;

  const ModalScrollPhysics({super.parent});

  @override
  ModalScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return ModalScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    if (value < position.pixels && position.pixels <= position.minScrollExtent) {
      return value - position.pixels;
    }
    if (value < position.minScrollExtent && position.minScrollExtent < position.pixels) {
      return value - position.minScrollExtent;
    }
    return 0.0;
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    assert(offset != 0.0);
    assert(position.minScrollExtent <= position.maxScrollExtent);

    if (!position.outOfRange) {
      return offset;
    }

    final double overscrollPastStart = math.max(position.minScrollExtent - position.pixels, 0.0);
    final double overscrollPastEnd = math.max(position.pixels - position.maxScrollExtent, 0.0);
    final double overscrollPast = math.max(overscrollPastStart, overscrollPastEnd);
    final easing =
        (overscrollPastStart > 0.0 && offset < 0.0) || (overscrollPastEnd > 0.0 && offset > 0.0);

    final friction =
        easing
            ? frictionFactor((overscrollPast - offset.abs()) / position.viewportDimension)
            : frictionFactor(overscrollPast / position.viewportDimension);
    final direction = offset.sign;
    return direction * _applyFriction(overscrollPast, offset.abs(), friction);
  }

  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) => true;

  @override
  Simulation? createBallisticSimulation(ScrollMetrics position, double velocity) {
    final tolerance = toleranceFor(position);
    if (velocity.abs() >= tolerance.velocity || position.outOfRange) {
      return BouncingScrollSimulation(
        spring: spring,
        position: position.pixels,
        velocity: velocity,
        leadingExtent: position.minScrollExtent,
        trailingExtent: position.maxScrollExtent,
        tolerance: tolerance,
      );
    }
    return null;
  }

  @override
  double carriedMomentum(double existingVelocity) {
    return existingVelocity.sign *
        math.min(0.000816 * math.pow(existingVelocity.abs(), 1.967).toDouble(), 40000.0);
  }

  double frictionFactor(double overscrollFraction) {
    return 0.52 * math.pow(1 - overscrollFraction, 2);
  }

  static double _applyFriction(double extentOutside, double absDelta, double gamma) {
    assert(absDelta > 0);
    var delta = absDelta;
    var total = 0.0;
    if (extentOutside > 0) {
      final deltaToLimit = extentOutside / gamma;
      if (absDelta < deltaToLimit) {
        return absDelta * gamma;
      }
      total += extentOutside;
      delta = absDelta - deltaToLimit;
    }
    return total + delta;
  }
}
