import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mbt_halal/scr/core/utils/constants/colors.dart';
import 'package:mbt_halal/scr/core/utils/constants/sizes.dart';
import 'package:mbt_halal/scr/core/utils/device/device_utility.dart';
import 'package:mbt_halal/scr/core/utils/helpers/helper_functions.dart';

class BSearchContainer extends StatelessWidget {
  const BSearchContainer(
      {super.key,
      this.colors,
      this.borderColors,
      this.padding =
          const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace),
      this.icon = Iconsax.search_normal,
      required this.text,
      this.onTap,
      this.iconColor = BColors.darkGrey,
      this.showBorder = false});

  final Color? colors;
  final Color? borderColors;
  final IconData? icon;
  final String text;
  final Color iconColor;
  final bool showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: BDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(BSizes.md),
          decoration: BoxDecoration(
            color: colors ?? (darkMode ? BColors.dark : BColors.light),
            border: showBorder
                ? Border.all(
                    color: borderColors ??
                        (darkMode ? BColors.dark : BColors.light),
                  )
                : null,
            borderRadius: BorderRadius.circular(
              BSizes.cardRadiusMd,
            ),
          ),
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(
                width: BSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
