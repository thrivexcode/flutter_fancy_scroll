import 'package:flutter/widgets.dart';

extension PositionedExt on Widget {
  Positioned positioned({
    double? top,
    double? left,
    double? right,
    double? bottom,
  }) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: this,
    );
  }
}
