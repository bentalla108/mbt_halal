import 'package:flutter/material.dart';

class BProductTitleText extends StatelessWidget {
  const BProductTitleText({
    super.key,
    this.smallSize = false,
    this.textAlign = TextAlign.center,
    this.maxLines = 2,
    required this.title,
  });

  final bool smallSize;
  final TextAlign textAlign;
  final int maxLines;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: !smallSize
          ? Theme.of(context).textTheme.titleLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: textAlign,
    );
  }
}
