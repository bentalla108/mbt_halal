import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/common/widgets/products/product_cell.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/models/mock_model/product.dart';

class ProductSCrool extends StatelessWidget {
  const ProductSCrool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: ListView.builder(
        // padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => ProductCell(
          onPressed: () {},
          onCart: () {},
          product: MockProductModel.random(),
        ),
      ),
    );
  }
}
