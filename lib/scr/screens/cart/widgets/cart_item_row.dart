import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import 'items_add_remove_to_cart.dart';

class CartItemRow extends StatelessWidget {
  final VoidCallback didDelete;
  final VoidCallback didQtyAdd;
  final VoidCallback didQtySub;

  final String name;

  final String image;

  final double price;

  final int prodQuantity;

  const CartItemRow(
      {super.key,
      required this.didQtyAdd,
      required this.didQtySub,
      required this.didDelete,
      required this.name,
      required this.image,
      required this.price,
      required this.prodQuantity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        // height: 120,
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: image,
                  width: 80,
                  height: 65,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                name,
                                style: const TextStyle(
                                    color: BColors.secondary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            InkWell(
                              onTap: didDelete,
                              child: const Icon(
                                Icons.close,
                                size: 15,
                                color: BColors.secondary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          // "${CartProduct.unitValue}${CartProduct.unitName} Price",
                          name,
                          style: TextStyle(
                              color: BColors.secondary.withOpacity(0.8),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              // "\$${(CartProduct.totalPrice ?? 0).toStringAsFixed(2)}",
                              price.toString(),
                              style: const TextStyle(
                                  color: BColors.secondary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),

                            // // Text(
                            // //   (CartProduct.qty ?? 0).toString(),
                            // //   style: TextStyle(
                            // //       color: BColors.secondary,
                            // //       fontSize: 16,
                            // //       fontWeight: FontWeight.w600),
                            // // ),

                            const Spacer(),

                            ItemsAddRemoveToCart(
                              quantity: prodQuantity.toString(),
                              didQtyAdd: didQtyAdd,
                              didQtySub: didQtySub,
                            ),
                            const Spacer()
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
