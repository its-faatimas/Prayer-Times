import 'package:adhan/core/components/exporting_packages.dart';
import 'package:flutter/material.dart';

class MyBorderRadius {
  static BorderRadius circular({double radius = 6.0}) =>
      BorderRadius.circular(radius);

  static BorderRadius only({
    double topRight = 0.0,
    double topLeft = 0.0,
    double bottomRight = 0.0,
    double bottomLeft = 0.0,
  }) =>
      BorderRadius.only(
        topRight: Radius.circular(topRight),
        topLeft: Radius.circular(topLeft),
        bottomRight: Radius.circular(bottomRight),
        bottomLeft: Radius.circular(bottomLeft),
      );
}
