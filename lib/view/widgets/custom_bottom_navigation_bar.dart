import 'package:adhan/core/constants/asset_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      items: [
        _setItem(AssetIcons.home, 'Home'),
        _setItem(AssetIcons.bell, 'Alarm'),
        _setItem(AssetIcons.calendar, 'Date'),
        _setItem(AssetIcons.user, 'Profile'),
      ],
    );
  }

  BottomNavigationBarItem _setItem(String assetIcon, String label) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(assetIcon),
        label: label,
      );
}
