import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/common/widgets/products/product_cell_card.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/screens/home/controllers/home_controller.dart';

import '../../../common/widgets/grid_layout.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var product = HomeController.instance.lastProductArr;
    return SingleChildScrollView(
      child: BGridLayout(
        mainAxisExtent: 280.v,
        itemCount: product.length,
        itemBuilder: (context, index) => ProductCellGridLayout(
          index: index,
          onPressed: () {},
          onCart: () {},
          product: product,
        ),
      ),
    );
  }
}
