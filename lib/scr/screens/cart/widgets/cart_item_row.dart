import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/models/mock_model/product.dart';
import 'package:mtb_halal/scr/models/product.dart';

import 'items_add_remove_to_cart.dart';

class CartItemRow extends StatelessWidget {
  final ProductModel product = MockProductModel.random();
  // final CartItemModel cObj;
  final VoidCallback didDelete;
  final VoidCallback didQtyAdd;
  final VoidCallback didQtySub;

  CartItemRow(
      {super.key,
      required this.didQtyAdd,
      required this.didQtySub,
      required this.didDelete});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 120,
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //  CachedNetworkImage(
                //   imageUrl: cObj.image ?? "",
                //   placeholder: (context, url) => const Center(
                //     child: CircularProgressIndicator(),
                //   ),
                //   errorWidget: (context, url, error) => const Icon(Icons.error),
                //  width: 80,
                //   height: 65,
                //   fit: BoxFit.contain,
                // ),

                CustomImageView(
                  imagePath: product.image,
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
                                // cObj.name ?? "",

                                product.name,
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
                          // "${cObj.unitValue}${cObj.unitName} Price",
                          product.description,
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
                            const Text(
                              // "\$${(cObj.totalPrice ?? 0).toStringAsFixed(2)}",
                              '14\$ * 2',
                              style: TextStyle(
                                  color: BColors.secondary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),

                            // // Text(
                            // //   (cObj.qty ?? 0).toString(),
                            // //   style: TextStyle(
                            // //       color: BColors.secondary,
                            // //       fontSize: 16,
                            // //       fontWeight: FontWeight.w600),
                            // // ),

                            const Spacer(),

                            ItemsAddRemoveToCart(
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
