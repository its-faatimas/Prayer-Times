import 'package:adhan/view/widgets/my_border_radius.dart';
import 'package:flutter/material.dart';

class MyShape {
  static RoundedRectangleBorder circular({double radius = 6.0}) =>
      RoundedRectangleBorder(
        borderRadius: MyBorderRadius.circular(radius: radius),
      );

  static RoundedRectangleBorder only({
    BorderRadius borderRadius = BorderRadius.zero,
    BorderSide borderSide = BorderSide.none,
  }) =>
      RoundedRectangleBorder(
        side: borderSide,
        borderRadius: borderRadius,
      );
}
