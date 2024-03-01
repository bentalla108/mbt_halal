import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/screens/cart/widgets/items_add_remove_to_cart.dart';
import 'package:dotted_line/dotted_line.dart';

import '../../../common/widgets/products/product_price_text.dart';
import '../../../models/product.dart';
import 'single_product_items.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    required this.showAddRemoveButton,
    required this.product,
  });

  final bool showAddRemoveButton;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                SingleProductCartItem(
                  image: product.image,
                  name: product.name,
                ),
                if (showAddRemoveButton)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ProductPrice(price: product.price.toStringAsFixed(3)),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [SizedBox(width: 70), ItemsAddRemoveToCart()],
                      ),
                    ],
                  ),
                const SizedBox(
                  height: 8,
                ),
                const DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                ),
              ],
            ),
        separatorBuilder: (_, __) => const SizedBox(
              height: 10,
            ),
        itemCount: 3);
  }
}
