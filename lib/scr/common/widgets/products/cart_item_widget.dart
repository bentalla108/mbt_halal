import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/common/widgets/custom_text.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

import '../../../models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItemModel cartItem;

  const CartItemWidget({super.key, required this.cartItem});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomImageView(
            imagePath: cartItem.image,
            width: 80,
            // height: 90,
          ),
        ),
        Expanded(
            child: Wrap(
          direction: Axis.vertical,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 14),
                child: CustomText(
                  text: cartItem.name,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: () {
                      // cartController.decreaseQuantity(cartItem);
                    }),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: cartItem.quantity.toString(),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {
                      // cartController.increaseQuantity(cartItem);
                    }),
              ],
            )
          ],
        )),
        Padding(
          padding: const EdgeInsets.all(14),
          child: CustomText(
            text: "\$${cartItem.cost}",
            size: 22,
            weight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
