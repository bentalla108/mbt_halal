// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/core/utils/constants/colors.dart';

import '../../cart/controllers/shipping_controller.dart';
import 'credit_card.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    ShippinController shippinController = Get.put(ShippinController());

    return Obx(() {
      return Column(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(color: BColors.grey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    shippinController.payementType.value = "card";
                  },
                  child: Row(
                    children: [
                      Icon(
                        shippinController.payementType.value == "card"
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color: BColors.secondary,
                      ),
                      Icon(
                        Icons.payment,
                        // shippinController.payementType.value == "card"
                        //     ? Icons.radio_button_checked
                        //     : Icons.radio_button_off,
                        color: BColors.primary,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Cart D/C",
                        style: TextStyle(
                            color: BColors.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    shippinController.payementType.value = "paypal";
                  },
                  child: Row(
                    children: [
                      Icon(
                        shippinController.payementType.value == "paypal"
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color: BColors.primary,
                      ),
                      Icon(
                        Icons.paypal,
                        // shippinController.payementType.value == "paypal"
                        // ? Icons.radio_button_checked
                        // : Icons.radio_button_off,
                        color: BColors.primary,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "PayPal",
                        style: TextStyle(
                            color: BColors.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          shippinController.payementType.value == "card"
              ? CreditCartForm()
              : ElevatedButton(onPressed: () {}, child: Text('Paypal Login')),
        ],
      );
    });
  }
}
