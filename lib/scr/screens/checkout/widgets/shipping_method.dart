import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../../cart/controllers/shipping_controller.dart';

class ShippingMethod extends StatelessWidget {
  const ShippingMethod({super.key});

  @override
  Widget build(BuildContext context) {
    ShippinController shippinController = Get.put(ShippinController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() {
          return Container(
            decoration: const BoxDecoration(color: BColors.grey),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      shippinController.txtType.value = "onSite";
                    },
                    child: Row(
                      children: [
                        Icon(
                          shippinController.txtType.value == "onSite"
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          color: BColors.secondary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.pin_drop,
                          color: BColors.secondary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Recover on site",
                          style: TextStyle(
                              color: BColors.secondary,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      shippinController.txtType.value = "Home";
                    },
                    child: Row(
                      children: [
                        Icon(
                          shippinController.txtType.value == "Home"
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          color: BColors.secondary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.motorcycle,
                          // shippinController.txtType.value == "Office"
                          // ? Icons.radio_button_checked
                          // : Icons.radio_button_off,
                          color: BColors.primary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Home delivery",
                          style: TextStyle(
                              color: BColors.secondary,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        const Text(
            'If you would like to add a comment about your order, please write it in the field below.'),
        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),
        const TextField(
          maxLines: 3, //or null
        ),
      ],
    );
  }
}
