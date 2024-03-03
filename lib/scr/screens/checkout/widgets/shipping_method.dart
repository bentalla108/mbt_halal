import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class ShippingMethod extends StatelessWidget {
  const ShippingMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: BColors.grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  // addressVM.txtType.value = "Home";
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.home,
                      // addressVM.txtType.value == "Home"
                      //     ? Icons.radio_button_checked
                      //     : Icons.radio_button_off,
                      color: BColors.primary,
                    ),
                    Text(
                      "Recover on site",
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
                      Icons.motorcycle,
                      // addressVM.txtType.value == "Office"
                      // ? Icons.radio_button_checked
                      // : Icons.radio_button_off,
                      color: BColors.primary,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Livraison",
                      style: TextStyle(
                          color: BColors.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
