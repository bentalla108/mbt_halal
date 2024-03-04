import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/models/product.dart';
import 'package:mtb_halal/scr/screens/cart/widgets/items_add_remove_to_cart.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.maxFinite,
                  height: media.width * 0.8,
                  decoration: BoxDecoration(
                      color: const Color(0xffF2F3F2),
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: CustomImageView(
                    fit: BoxFit.contain,
                    imagePath: product.image,
                    width: media.width * 0.8,
                  ),
                ),
                SafeArea(
                  child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            size: 20,
                            Icons.arrow_back,
                          )),
                      actions: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.share,
                              size: 20,
                            )),
                      ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.name,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                  // Text(
                  //   "${detailVM.pObj.unitValue ?? ""}${detailVM.pObj.unitName ?? ""}, Price",
                  //   style: TextStyle(
                  //       color: TColor.secondaryText,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w600),
                  // ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${product.price.toStringAsFixed(2)} \$",
                        style: const TextStyle(
                            color: BColors.secondary,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      const ItemsAddRemoveToCart()
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                        color: BColors.secondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  const Divider(
                    color: Colors.black26,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(BSizes.md),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(BColors.secondary)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.shopping_cart),
                    Text("Add To Basket"),
                  ],
                ),
                onPressed: () {
                  // CartViewModel.serviceCallAddToCart(
                  //     pObj.prodId ?? 0, detailVM.qty.value, () {
                  //   Navigator.pop(context);
                  // }
                  // );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
