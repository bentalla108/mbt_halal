import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mbt_halal/scr/core/app_export.dart';

class BAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BAppbar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.centerTitle});

  final Widget? title;
  final bool showBackArrow;
  final bool? centerTitle;
  final IconData? leadingIcon;
  final List<Widget>? actions;

  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: BSizes.md, right: BSizes.md, top: BSizes.xl),
      child: AppBar(
        centerTitle: centerTitle,
        backgroundColor: Colors.transparent,
        title: title,
        actions: actions,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: BColors.black,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: () => leadingOnPressed,
                    icon: Icon(leadingIcon),
                  )
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}
