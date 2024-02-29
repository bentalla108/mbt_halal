// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/core/utils/helpers/size_utils.dart';
import 'package:mbt_halal/scr/models/product.dart';

import '../../../../common/widgets/icons/circular_icon.dart';

class SingleProductWidget extends StatelessWidget {
  final ProductModel product;

  const SingleProductWidget({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300.v,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 6.v,
            ),
            // height: 110.v,
            // width: 95.h,
            child: CustomImageView(
              height: 190.v,
              width: 140.h,
              fit: BoxFit.contain,

              imagePath: product.image,
              // alignment: Alignment.centerLeft,
            ),
          ),
          Container(
            height: 85.v,
            width: 190.h,
            decoration: BoxDecoration(color: BColors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: const Offset(3, 10),
                  blurRadius: 10)
            ]),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(right: 4.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 5.v,
                    ),
                    // decoration: AppDecoration.outlinePrimaryContainer,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(product.name,
                            style: Theme.of(context).textTheme.titleSmall),
                        SizedBox(height: 8.v),
                        Text("${product.price.toStringAsFixed(3)} \$",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                )),
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Transform.translate(
                      offset: Offset(8, 8),
                      child: BCircularIcon(
                          width: 32.adaptSize,
                          height: 32.adaptSize,
                          size: 24.adaptSize,
                          color: BColors.white,
                          icon: Icons.add,
                          onPressed: () {
                            // cartController.addProductToCart(productd, },
                          }),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}





//  Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   CustomText(
//                     text: product.name,
//                     size: 10,
//                     weight: FontWeight.bold,
//                   ),
//                   CustomText(
//                     text: product.brand,
//                     color: Colors.grey,
//                     size: 10,
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   CustomText(
//                     text: "\$${product.price.toStringAsFixed(3)}",
//                     size: 10,
//                     weight: FontWeight.bold,
//                     textAlign: TextAlign.center, // Centrer le texte
//                   ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Transform.translate(
//                       offset: const Offset(10, 10),
//                       child: BCircularIcon(
//                         icon: Icons.add,
//                         onPressed: () {
//                           // cartController.addProductToCart(product);
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),