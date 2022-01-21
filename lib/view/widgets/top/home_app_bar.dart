import 'package:adhan/core/components/exporting_packages.dart';
import 'package:adhan/view/widgets/top/app_bar_title.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  final String _mosque =
      'https://images.unsplash.com/photo-1584551246679-0daf3d275d0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80';

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.teal,
      stretch: true,
      floating: true,
      title: AppBarTitle(),
      shape: RoundedRectangleBorder(
        borderRadius: MyBorderRadius.only(bottomLeft: 32.0, bottomRight: 32.0),
      ),
      bottom: PreferredSize(
        preferredSize: Size(45, 240),
        child: Container(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: ClipRRect(
            borderRadius:
                MyBorderRadius.only(bottomLeft: 32.0, bottomRight: 32.0),
            child: Image.network(_mosque, fit: BoxFit.cover)),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(getWidth(375.0), getHeight(240.0));
}
