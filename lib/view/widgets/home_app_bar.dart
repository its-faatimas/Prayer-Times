import 'package:adhan/core/components/exporting_packages.dart';
import 'package:adhan/view/widgets/my_shape.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.teal,
      stretch: true,
      floating: true,
      shape: MyShape.circular(radius: 12.0),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(getWidth(375.0), getHeight(120.0));
}
