// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/utils/constants/colors.dart';

import 'credit_card.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                // addressVM.txtType.value = "Home";
              },
              child: Row(
                children: [
                  Icon(
                    Icons.payment,
                    // addressVM.txtType.value == "Home"
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
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // addressVM.txtType.value = "Office";
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.paypal,
                    // addressVM.txtType.value == "Office"
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
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
        CreditCartForm(),
      ],
    );
  }
}
