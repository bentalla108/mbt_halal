import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class BTabBar extends StatelessWidget implements PreferredSizeWidget {
  const BTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: BColors.dark,
      child: TabBar(
          tabAlignment: TabAlignment.start,
          indicatorColor: BColors.primary,
          isScrollable: true,
          unselectedLabelColor: BColors.darkGrey,
          labelColor: BColors.primary,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}
