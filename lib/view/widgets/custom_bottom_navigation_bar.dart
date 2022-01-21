import 'package:adhan/core/constants/asset_icons.dart';
import 'package:adhan/provider/bottom_nav_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);
  late BottomNavBarProvider _barProvider;

  @override
  Widget build(BuildContext context) {
    _barProvider = context.watch();
    return BottomNavigationBar(
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      currentIndex: _barProvider.currentIndex,
      onTap: _barProvider.onChanged,
      items: [
        _setItem(AssetIcons.home, 'Home', 0),
        _setItem(AssetIcons.bell, 'Alarm', 1),
        _setItem(AssetIcons.calendar, 'Date', 2),
        _setItem(AssetIcons.user, 'Profile', 3),
      ],
    );
  }

  BottomNavigationBarItem _setItem(String assetIcon, String label, int index) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          assetIcon,
          color: _barProvider.currentIndex == index ? Colors.teal : Colors.grey,
        ),
        label: label,
      );
}
