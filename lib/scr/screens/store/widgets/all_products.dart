// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mtb_halal/scr/common/widgets/products/product_cell_card.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/screens/home/controllers/home_controller.dart';

import '../../../common/widgets/grid_layout.dart';
import '../../../models/product.dart';

class AllProductsScreen extends StatelessWidget {
  final List<ProductModel> product;

  const AllProductsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
