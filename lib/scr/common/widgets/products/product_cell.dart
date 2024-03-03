// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/common/widgets/products/product_details_view.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/models/product.dart';

class ProductCell extends StatelessWidget {
  // final OfferProductModel pObj;

  final ProductModel product;
  final VoidCallback onPressed;
  final VoidCallback onCart;
  final double margin;
  final double weight;

  const ProductCell(
      {super.key,
      required this.product,
      // required this.pObj,
      required this.onPressed,
      this.weight = 150,
      this.margin = 8,
      required this.onCart});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () => Get.to(() => ProductDetails(product: product)),
      child: Container(
        width: weight,
        margin: EdgeInsets.only(top: margin, right: 8, bottom: margin),
        padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          // border: Border.all(color: BColors.white.withOpacity(0.5), width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              alignment: Alignment.center,
              width: 100,
              height: 90,
              fit: BoxFit.contain,
              imagePath: product.image,
            ),
            // const Spacer(),

            const Spacer(),
            Expanded(
              flex: 2,
              child: Stack(children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        offset: const Offset(3, 3),
                        blurRadius: 10)
                  ], color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      Text(product.name,
                          style: Theme.of(context).textTheme.bodyLarge),
                      const SizedBox(
                        height: 2,
                      ),
                      // const Text(
                      //   // "${pObj.unitValue}${pObj.unitName}",
                      //   "12 Items",

                      //   style: TextStyle(
                      //       color: BColors.secondary,
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w500),
                      // ),

                      Text(
                        // "\$${pObj.offerPrice ?? pObj.price}",
                        '${product.price.toStringAsFixed(2)} \$',

                        style: const TextStyle(
                            color: BColors.secondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Transform.translate(
                    offset: const Offset(5, 5),
                    child: InkWell(
                      onTap: onCart,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: BColors.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          color: BColors.white,
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
