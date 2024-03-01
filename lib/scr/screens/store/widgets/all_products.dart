import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/common/widgets/products/product_cell.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/models/mock_model/product.dart';

import '../../../common/widgets/grid_layout.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BGridLayout(
        mainAxisExtent: 280.v,
        itemCount: 12,
        itemBuilder: (context, index) => ProductCell(
          onPressed: () {},
          onCart: () {},
          product: MockProductModel.random(),
        ),
      ),
    );
  }
}
