import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class BRoundedIMage extends StatelessWidget {
  const BRoundedIMage({
    super.key,
    required this.imageUrl,
    this.heigth,
    this.width,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
    this.onPressed,
    this.padding,
    this.fit = BoxFit.contain,
    this.backgroundColor,
    this.border,
    this.borderRadius = BSizes.md,
  });

  final String imageUrl;
  final double? heigth, width;
  final double borderRadius;
  final bool applyImageRadius, isNetworkImage;

  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final BoxFit? fit;
  final Color? backgroundColor;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: heigth,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
