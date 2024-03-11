import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../../../common/widgets/icons/circular_icon.dart';

class ItemsAddRemoveToCart extends StatelessWidget {
  final VoidCallback didQtyAdd;
  final VoidCallback didQtySub;

  const ItemsAddRemoveToCart({
    super.key,
    required this.didQtyAdd,
    required this.didQtySub,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid, color: Colors.black.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(25),
          color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BCircularIcon(
            icon: Iconsax.minus,
            width: 32,
            height: 32,
            onPressed: didQtySub,
            color: BColors.black,
            backgroundColor: BColors.white,
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
            onPressed: didQtyAdd,
            backgroundColor: BColors.white,
            color: BColors.black,
          ),
        ],
      ),
    );
  }
}
