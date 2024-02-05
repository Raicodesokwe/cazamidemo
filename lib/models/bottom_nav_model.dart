import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../routes/app_routes.dart';

class BottomNavItem {
  final IconData iconAsset;
  final String routeName;

  const BottomNavItem({
    required this.iconAsset,
    required this.routeName,
  });
}

List<BottomNavItem> bottomNavList = [
  BottomNavItem(
    iconAsset: FontAwesomeIcons.house,
    routeName: AppRoutes.home,
  ),
  BottomNavItem(
    iconAsset: FontAwesomeIcons.chartLine,
    routeName: AppRoutes.trend,
  ),
];
