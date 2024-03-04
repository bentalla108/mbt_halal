import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class BTabBar extends StatelessWidget implements PreferredSizeWidget {
  const BTabBar({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Colors.transparent,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      labelPadding: const EdgeInsets.symmetric(horizontal: 5),
      tabAlignment: TabAlignment.center,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(55),
        color: Colors.black,
      ),
      isScrollable: true,
      unselectedLabelColor: BColors.secondary,
      labelColor: BColors.white,
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}
