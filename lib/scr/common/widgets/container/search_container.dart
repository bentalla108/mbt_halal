import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

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
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: BDeviceUtils.getScreenWidth(context) * 0.9,
          padding: const EdgeInsets.all(BSizes.md),
          decoration: BoxDecoration(
            color: colors ?? (BColors.light),
            border: showBorder
                ? Border.all(
                    color: borderColors ?? (BColors.light),
                  )
                : null,
            borderRadius: BorderRadius.circular(
              BSizes.cardRadiusMd,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Icon(
                icon,
                color: iconColor,
                size: 24,
              ),
              // const SizedBox(
              //   width: BSizes.spaceBtwItems,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
