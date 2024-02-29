import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import '../../../../models/mock_model/product.dart';
import '../../../checkout/screen/checkou_screnn.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BAppbar(
        showBackArrow: true,
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace),
        child: CartItems(
          product: MockProductModel.random(),
          showAddRemoveButton: true,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BSizes.defaultSpace),
        child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(BColors.secondary)),
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout \$2500')),
      ),
    );
  }
}
