import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class BTabBar extends StatelessWidget implements PreferredSizeWidget {
  const BTabBar({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: const EdgeInsets.symmetric(
          horizontal:
              10), // Ajouter de l'espacement autour du texte de l'onglet
      tabAlignment: TabAlignment.start,
      indicatorColor: Colors.transparent,
      indicator: BoxDecoration(
        backgroundBlendMode: BlendMode.dstOut,
        borderRadius: BorderRadius.circular(30),
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
