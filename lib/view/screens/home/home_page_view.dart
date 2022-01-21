import 'package:adhan/view/widgets/custom_bottom_navigation_bar.dart';
import 'package:adhan/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: CustomScrollView(
        slivers: [
          HomeAppBar()
        ],
      ),
    );
  }
}
