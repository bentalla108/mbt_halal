import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/common/widgets/custom_text.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/models/product.dart';

import '../../../../common/widgets/icons/circular_icon.dart';

class SingleProductWidget extends StatelessWidget {
  final ProductModel product;

  const SingleProductWidget({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: CustomImageView(
                  imagePath: product.image,
                  width: double.infinity,
                )),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: BColors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: const Offset(3, 10),
                  blurRadius: 10)
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: product.name,
                  size: 18,
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: product.brand,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: "\$${product.price.toStringAsFixed(3)}",
                  size: 22,
                  weight: FontWeight.bold,
                  textAlign: TextAlign.center, // Centrer le texte
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Transform.translate(
                    offset: const Offset(10, 10),
                    child: BCircularIcon(
                      icon: Icons.add,
                      onPressed: () {
                        // cartController.addProductToCart(product);
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
