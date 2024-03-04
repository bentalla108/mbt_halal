import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/utils/constants/colors.dart';

class BCircularContainer extends StatelessWidget {
  const BCircularContainer(
      {super.key,
      this.radius = 400,
      this.height = 400,
      this.width = 400,
      this.child,
      this.backgroundColor = BColors.textWhite,
      this.padding = 0,
      this.margin,
      this.color});

  final double? height;
  final double? width;
  final double radius;
  final Color backgroundColor;
  final Color? color;
  final double padding;
  final EdgeInsets? margin;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
