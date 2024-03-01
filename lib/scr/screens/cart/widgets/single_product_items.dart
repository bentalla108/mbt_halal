import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

import '../../../common/widgets/container/rounded_image.dart';
import '../../../common/widgets/products/product_tittle.dart';

class SingleProductCartItem extends StatelessWidget {
  final String name;

  final String image;

  const SingleProductCartItem({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BRoundedIMage(
          heigth: 90,
          width: 90,
          imageUrl: image,
          padding: const EdgeInsets.all(BSizes.sm),
          backgroundColor: BColors.grey,
        ),
        const SizedBox(
          width: BSizes.spaceBtwSections,
        ),
        BProductTitleText(
          title: name,
          maxLines: 1,
        )
      ],
    );
  }
}
