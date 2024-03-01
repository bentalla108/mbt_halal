import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

import '../../../common/widgets/icons/circular_icon.dart';

class ItemsAddRemoveToCart extends StatelessWidget {
  const ItemsAddRemoveToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          onPressed: () {},
          color: BColors.white,
          backgroundColor: BColors.black.withOpacity(0.5),
        ),
        const SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: BSizes.spaceBtwItems,
        ),
        BCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          onPressed: () {},
          backgroundColor: BColors.primary,
          color: BColors.white,
        ),
      ],
    );
  }
}
