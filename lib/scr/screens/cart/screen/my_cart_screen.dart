import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/screens/cart/controllers/cart_controller.dart';
import '../../../core/app_export.dart';

import '../../checkout/screen/checkou_screnn.dart';
import '../widgets/cart_item_row.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  static String routeName = "cartScreen";

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(), // Initialiser le contrôleur
      dispose: (_) => Get.delete<
          CartController>(), // Supprimer le contrôleur lorsqu'il n'est plus nécessaire
      builder: (cartController) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "My Cart",
            ),
          ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Obx(() {
                return cartController.listArr.isEmpty
                    ? const Center(
                        child: Text(
                          "Your Cart is Empty",
                          style: TextStyle(
                            color: BColors.secondary,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(BSizes.defaultSpace),
                        itemCount: cartController.listArr.length,
                        separatorBuilder: (context, index) => const DottedLine(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          lineLength: double.infinity,
                          lineThickness: 1.0,
                          dashLength: 3.0,
                          dashColor: Colors.black,
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.transparent,
                          dashGapRadius: 0.0,
                        ),
                        itemBuilder: (context, index) {
                          var product = cartController.listArr[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: index == cartController.listArr.length - 1
                                  ? 90
                                  : 0,
                            ),
                            child: CartItemRow(
                              prodQuantity: product.quantity,
                              image: product.image,
                              price: product.price,
                              name: product.name,
                              didDelete: () =>
                                  cartController.delToCart(product),
                              didQtyAdd: () {
                                cartController.updateCart(
                                    product, (product.quantity + 1).toDouble());
                                print(product.quantity);
                              },
                              didQtySub: () {
                                var quantity = product.quantity;
                                quantity -= 1;
                                print(quantity);

                                if (quantity < 0) {
                                  quantity = 0;
                                }
                                cartController.updateCart(
                                    product, quantity.toDouble());
                              },
                            ),
                          );
                        },
                      );
              }),
              Obx(() {
                return cartController.listArr.isNotEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(-5, -5),
                                  blurRadius: 2,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 0.0,
                                left: 20,
                                right: 20,
                                bottom: 15,
                              ),
                              child: Column(
                                children: [
                                  const DottedLineW(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total :',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Text(
                                          "\$${cartController.cartTotalPrice.value}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Get.to(() => const CheckoutScreen());
                                    },
                                    height: 60,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                    minWidth: double.maxFinite,
                                    elevation: 0.1,
                                    color: BColors.secondary,
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Proceed checkout",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4,
                                            horizontal: 8,
                                          ),
                                          child: Text(
                                            "\$${cartController.cartTotalPrice.value}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(); // If cart is empty, return an empty SizedBox
              }),
            ],
          ),
        );
      },
    );
  }
}

class DottedLineW extends StatelessWidget {
  const DottedLineW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DottedLine(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      lineLength: double.infinity,
      lineThickness: 1.5,
      dashLength: 5.0,
      dashColor: Colors.black,
      dashRadius: 0.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }
}
