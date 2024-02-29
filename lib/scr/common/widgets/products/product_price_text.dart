import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice(
      {super.key,
      this.smallSize = false,
      this.lineThrough = false, // Prix barré ??
      this.maxLine = 1,
      required this.price,
      this.currency = '\$'});
  final bool smallSize;
  final bool lineThrough;
  final int maxLine;
  final String price, currency;
  @override
  Widget build(BuildContext context) {
    return Text(
      currency + price,
      style: smallSize
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
    );
  }
}
