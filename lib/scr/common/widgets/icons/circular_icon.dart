import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class BCircularIcon extends StatelessWidget {
  const BCircularIcon({
    super.key,
    this.backgroundColor,
    this.color,
    required this.icon,
    this.height,
    this.width,
    required this.onPressed,
    this.size = BSizes.md,
  });

  final Color? backgroundColor;
  final Color? color;
  final IconData icon;
  final double? height, width, size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? BColors.primary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
