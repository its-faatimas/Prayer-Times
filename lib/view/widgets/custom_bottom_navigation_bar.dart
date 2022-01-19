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
      onTap: _barProvider.onChanged,
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
