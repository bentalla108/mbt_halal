import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mtb_halal/scr/core/app_export.dart';

class BAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BAppbar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.centerTitle = false,
      this.bottom,
      this.appBarSpacing = false});

  final Widget? title;
  final bool showBackArrow;
  final bool? centerTitle;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final bool appBarSpacing;

  final VoidCallback? leadingOnPressed;
  final PreferredSizeWidget? bottom;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: BSizes.defaultSpace, left: BSizes.md, right: BSizes.md),
      child: AppBar(
        bottom: bottom,
        titleSpacing: 0,
        surfaceTintColor: Colors.transparent,
        centerTitle: centerTitle,
        backgroundColor: Colors.transparent,
        title: title,
        actions: actions,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                // splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                // focusColor: Colors.transparent,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(0),
                onPressed: () => Get.back(),
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: BColors.black,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(0),
                    onPressed: () => leadingOnPressed,
                    icon: Icon(leadingIcon),
                  )
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
      BDeviceUtils.getAppBarHeight() * (appBarSpacing ? 2.5 : 1.5));
}
